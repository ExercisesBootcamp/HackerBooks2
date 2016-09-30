#import "_JARAuthor.h"

@interface JARAuthor : _JARAuthor {}
// Custom logic goes here.

+ (instancetype)authorNamed:(NSString *)name
                     ofBook:(JARBook *)book
                withContext:(NSManagedObjectContext *)context;

@end
