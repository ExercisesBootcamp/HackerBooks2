#import "_JARWriter.h"

@interface JARWriter : _JARWriter {}
// Custom logic goes here.

+ (instancetype)writerNamed:(NSString *)name withContext:(NSManagedObjectContext *)context;

@end
