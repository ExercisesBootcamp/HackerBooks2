//
//  JARAnnotationDetailVC.h
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 30/9/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JARBook;
@class JARAnnotation;

@interface JARAnnotationDetailVC : UIViewController

// IBOutles
@property (weak, nonatomic) IBOutlet UIImageView *backgroundView;
@property (weak, nonatomic) IBOutlet UITextField *titleInput;
@property (weak, nonatomic) IBOutlet UIView *textAndPhotoContainer;
@property (weak, nonatomic) IBOutlet UITextView *textInput;
@property (weak, nonatomic) IBOutlet UIImageView *photoView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *photoActivityIndicator;
// Autolayout
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomContainerConstrain;

/** To review/edit an existing one */
- (instancetype)initAnnotation:(JARAnnotation *)annotation forBook:(JARBook *)aBook;

@end
