//
//  JARAnnotationViewCell.m
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 30/9/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import "JARAnnotationViewCell.h"
#import "JARAnnotation.h"
#import "JARPhoto.h"

@implementation JARAnnotationViewCell

- (void)awakeFromNib {
    //[super awakeFromNib];
    // Initialization code
    self.photo.clipsToBounds = YES;
}

- (void)configureForAnnotation:(JARAnnotation *)annotation {
    
    self.titleLbl.text = annotation.title;
    if (annotation.photo.photoData) {
        self.photo.image = annotation.photo.image;
    } else {
        self.photo.hidden = YES;
        self.textView.text = annotation.text;
    }
}

- (void)prepareForReuse {
    self.photo.hidden = NO;
    self.textView.text = nil;
    self.titleLbl.text = nil;
}

@end
