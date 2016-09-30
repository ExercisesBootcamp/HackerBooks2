#import "_JARAnnotation.h"

@import  UIKit;

@class JARBook;

@interface JARAnnotation : _JARAnnotation {}

+ (instancetype)annotationOnBook:(JARBook *)aBook
                          titled:(NSString *)title
                        withText:(NSString *)text
                           photo:(UIImage *)image
                        latitude:(double)latitude
                       longitude:(double)longitude
                     withContext:(NSManagedObjectContext *)context;

@end
