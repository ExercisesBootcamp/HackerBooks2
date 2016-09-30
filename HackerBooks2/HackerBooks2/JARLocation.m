#import "JARLocation.h"

@interface JARLocation ()

// Private interface goes here.

@end

@implementation JARLocation

+ (instancetype)locationWithLatitude:(double)latitude
                        andLongitude:(double)longitude
                         withContext:(NSManagedObjectContext *)context {
    
    // Check if it already exists
    NSFetchRequest *req = [NSFetchRequest fetchRequestWithEntityName:[[self class] entityName]];
    req.predicate = [NSPredicate predicateWithFormat:@"(latitude = %f) AND (longitude = %f)",latitude, longitude];
    
    NSArray *results = [context executeFetchRequest:req error:nil];
    
    JARLocation *location;
    if ([results count] == 0) {
        location = [JARLocation insertInManagedObjectContext:context];
        [location setLatitudeValue:latitude];
        [location setLongitudeValue:longitude];
    } else if ([results count] == 1) {
        location = [results lastObject];
    } else if ([results count] > 1) {
        NSLog(@"Duplicated!! Location \'%f-%f\' was found %lu times on our DB", latitude, longitude, (unsigned long)[results count]);
    }
    
    return location;
}

@end
