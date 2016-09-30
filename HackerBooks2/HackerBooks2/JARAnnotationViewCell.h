//
//  JARAnnotationViewCell.h
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 30/9/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JARAnnotation;

@interface JARAnnotationViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UITextView *textView;

- (void)configureForAnnotation:(JARAnnotation *)annotation;

@end
