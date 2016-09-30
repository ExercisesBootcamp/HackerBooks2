#import "_JARLocation.h"

@interface JARLocation : _JARLocation {}
// Custom logic goes here.

+ (instancetype)locationWithLatitude:(double)latitude
                        andLongitude:(double)longitude
                         withContext:(NSManagedObjectContext *)context;
@end
