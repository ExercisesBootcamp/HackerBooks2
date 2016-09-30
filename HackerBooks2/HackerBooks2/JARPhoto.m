#import "JARPhoto.h"

@interface JARPhoto ()

// Private interface goes here.

@end

@implementation JARPhoto

- (UIImage *)image {
    
    // Convertir la NSData en UIImage
    return [UIImage imageWithData:self.photoData];
}

- (void)setImage:(UIImage *)image {
    
    // convertir la UIImage en NSData
    self.photoData = UIImageJPEGRepresentation(image, 0.9);
}

@end
