#import "JARBook.h"
#import "JARCover.h"
#import "JARPdf.h"
#import "JARAuthor.h"
#import "JARTag.h"
#import "JARLabel.h"
#import "JARWriter.h"

@interface JARBook ()

// Private interface goes here.

@end

@implementation JARBook

#pragma mark - Factory

+ (instancetype)bookFromDictionary:(NSDictionary *)JSON
                       withContext:(NSManagedObjectContext *)context {
    
    // Check JSON content
    // If fetched book doesn't content a minimum info,
    // skip it.
    if (![self hasNeededInformation:JSON]) {
        return nil;
    }

    JARBook *book = [self insertInManagedObjectContext:context];
    // title
    book.title = [JSON objectForKey:@"title"];
    // cover
    NSURL *coverURL = [NSURL URLWithString:[JSON objectForKey:@"image_url"]];
    book.cover = [JARCover coverForURL:coverURL withContext:context];
    // pdf
    NSURL *pdfURL = [NSURL URLWithString:[JSON objectForKey:@"pdf_url"]];
    book.pdf = [JARPdf pdfForURL:pdfURL withContext:context];
    // authors
    NSArray *authors = [self extractAuthors:JSON];
    for (NSString *name in authors) {
        [book addAuthorsObject:[JARAuthor authorNamed:name ofBook:book withContext:context]];
    }
    // tags
    NSArray *tags = [self extractTags:JSON];
    for (NSString *name in tags) {
        [book addTagsObject:[JARTag tagNamed:name ofBook:book withContext:context]];
    }
    // annotation
    // NOTE: when a book is created there is any annotation on it.
    
    return book;
}

#pragma mark - KVO

+ (NSArray *)observableKeys {
    return @[JARBookRelationships.annotations, JARBookRelationships.tags];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    if ([keyPath isEqualToString:@"annotations"]) {
        NSLog(@"Annotation did change");
    } else if ([keyPath isEqualToString:@"tags"]) {
        NSLog(@"Tag did change");
    }
}

#pragma mark - Helpers

- (BOOL)isFavoriteBook {
    // Is it tagged as Favorite?
    for (JARTag *tag in self.tags) {
        JARLabel *label = tag.label;
        if ([label.name isEqualToString:FAVORITE_LABEL]) {
            return YES;
        }
    }
    
    return NO;
}

- (BOOL)isPDFAvailable {
    return self.pdf.data ? YES : NO;
}

- (NSArray *)authorList {
    
    NSMutableArray *list = [[NSMutableArray alloc] init];
    NSArray *authors = [self.authors allObjects];
    for (JARAuthor *author in authors) {
        if (author.writer.name && ![author.writer.name isEqualToString:@""]) {
            [list addObject:author.writer.name];
        }
    }
    
    return list;
}

- (NSArray *)tagList {
    
    NSMutableArray *list = [[NSMutableArray alloc] init];
    NSArray *tags = [self.tags allObjects];
    for (JARTag *tag in tags) {
        if (tag.label.name && ![tag.label.name isEqualToString:@""]) {
            [list addObject:tag.label.name];
        }
    }
    
    return [list sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
}

- (NSArray *)tagListExceptFavorite {
    NSMutableArray *list = [[NSMutableArray alloc] init];
    NSArray *tags = [self.tags allObjects];
    for (JARTag *tag in tags) {
        if (tag.label.name && ![tag.label.name isEqualToString:@""] && ![tag.label.name isEqualToString:FAVORITE_LABEL]) {
            [list addObject:tag.label.name];
        }
    }
    
    return [list sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
}


#pragma mark - Utils

+ (BOOL)hasNeededInformation:(NSDictionary *)dic {
    
    NSString *title = [dic objectForKey:@"title"];
    if (!title || [title isEqualToString:@""]) {
        return NO;
    }
    
    return YES;
}

+ (NSArray *)extractTags:(NSDictionary *)JSON {
    return [self extractElementsForKey:@"tags" separatedBy:@"," onDictionary:JSON];
}

+ (NSArray *)extractAuthors:(NSDictionary *)JSON {
    return [self extractElementsForKey:@"authors" separatedBy:@"," onDictionary:JSON];
}

+ (NSArray *)extractElementsForKey:(NSString *)key separatedBy:(NSString *)separator onDictionary:(NSDictionary *)aDict {
    
    NSString *elements = [aDict objectForKey:key];
    elements = [elements stringByReplacingOccurrencesOfString:@", " withString:@","];
    NSArray *elementArr = [elements componentsSeparatedByString:separator];
    
    return elementArr;
}

//- (NSString *)description {
//    NSString *bookInfo = [NSString stringWithFormat:@"Title: %@, Authors: %@, Tags: %@",]
//    NSString *desc = [NSString stringWithFormat:@"Entity: %@ / id: %@\n%@", self.entityName,self.objectID];
//    return desc;
//}

@end
