#import "_JARTag.h"

@interface JARTag : _JARTag {}
// Custom logic goes here.

+ (instancetype)tagNamed:(NSString *)name
                  ofBook:(JARBook *)book
             withContext:(NSManagedObjectContext *)context;

+ (JARTag *)favoriteTagForBook:(JARBook *)aBook;

@end
