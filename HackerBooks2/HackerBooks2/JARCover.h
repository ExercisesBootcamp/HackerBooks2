#import "_JARCover.h"

@import UIKit.UIImage;

@interface JARCover : _JARCover {}
// Custom logic goes here.

+ (instancetype)coverForURL:(NSURL *)aURL withContext:(NSManagedObjectContext *)context;

/** If cover data is not stored on the DB, then we need to download and save it. */
- (void)fetchCoverImageWithCompletion:(void(^)(UIImage *image))completionBlock;

@end
