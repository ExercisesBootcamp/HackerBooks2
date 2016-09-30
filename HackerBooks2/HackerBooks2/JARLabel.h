#import "_JARLabel.h"

@interface JARLabel : _JARLabel {}

// NOTE: FAVORITE_LABEL starts with whitespace to force section order on table
#define FAVORITE_LABEL          @"> Favorite"

+ (instancetype)labelNamed:(NSString *)name withContext:(NSManagedObjectContext *)context;

- (NSComparisonResult)compare:(JARLabel *)other;

@end
