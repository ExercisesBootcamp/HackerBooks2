#import "JARTag.h"
#import "JARLabel.h"
#import "JARBook.h"

@interface JARTag ()

// Private interface goes here.

@end

@implementation JARTag

// Custom logic goes here.
+ (instancetype)tagNamed:(NSString *)name
                  ofBook:(JARBook *)book
             withContext:(NSManagedObjectContext *)context {
    
    JARTag *tag = [JARTag insertInManagedObjectContext:context];
    tag.label = [JARLabel labelNamed:name withContext:context];
    tag.book = book;
    
    return tag;
}

+ (JARTag *)favoriteTagForBook:(JARBook *)aBook {
    for (JARTag *tag in aBook.tags) {
        JARLabel *label = tag.label;
        if ([label.name isEqualToString:FAVORITE_LABEL]) {
            // If YES, untagged it
            return tag;
        }
    }
    
    return nil;
}




@end
