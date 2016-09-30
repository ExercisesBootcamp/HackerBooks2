#import "JARAnnotation.h"
#import "JARBook.h"
#import "JARPhoto.h"
#import "JARDate.h"
#import "JARLocation.h"
#import "NSString+Validation.h"

@interface JARAnnotation ()

// Private interface goes here.

@end

@implementation JARAnnotation

+ (instancetype)annotationOnBook:(JARBook *)aBook
                          titled:(NSString *)title
                        withText:(NSString *)text
                           photo:(UIImage *)image
                        latitude:(double)latitude
                       longitude:(double)longitude
                     withContext:(NSManagedObjectContext *)context {
    
    // Has needed info
    if ([NSString isEmpty:title] || !aBook || ([NSString isEmpty:text] && !image)) {
        // We need a title and a book
        // and a text OR an image to create an annotation
        return nil;
    }
    
    JARAnnotation *ann = [JARAnnotation insertInManagedObjectContext:context];
    // title
    ann.title = title;
    // book
    ann.book = aBook;
    // text
    if (![NSString isEmpty:text]) { ann.text = text; }
    // image
    ann.photo = [JARPhoto insertInManagedObjectContext:context];
    if (image) { ann.photo.image = image; }
    // date
    ann.date = [JARDate dateWithContext:context];
    // location
    // TODO *****
    
    return ann;
}

#pragma mark - KVO

+ (NSArray *)observableKeys {
    return @[JARAnnotationRelationships.photo, JARAnnotationAttributes.text, JARAnnotationAttributes.title];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    // Update modification date
    self.date.modification = [NSDate date];
}

@end
