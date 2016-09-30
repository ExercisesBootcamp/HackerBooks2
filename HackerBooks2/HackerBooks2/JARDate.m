#import "JARDate.h"

@interface JARDate ()

// Private interface goes here.

@end

@implementation JARDate

+ (instancetype)dateWithContext:(NSManagedObjectContext *)context {
    
    JARDate *nDate = [JARDate insertInManagedObjectContext:context];
    
    nDate.creation = [NSDate date];
    nDate.modification = nDate.creation;
    
    return nDate;
}

@end
