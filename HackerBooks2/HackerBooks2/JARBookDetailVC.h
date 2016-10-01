//
//  JARBookDetailVC.h
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 1/10/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

@import UIKit;

@class JARBook;
@class JARBookDetailVCDelegate;

#import "JARBookDetailVCDelegate.h"

@interface JARBookDetailVC : UIViewController <UISplitViewControllerDelegate>

@property (nonatomic, weak) id<JARBookDetailVCDelegate> delegate;
@property (nonatomic, readonly) JARBook *book;

#pragma mark - IBOutles
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImView;
@property (weak, nonatomic) IBOutlet UILabel *tagsLbl;
@property (weak, nonatomic) IBOutlet UIView *coverContainer;
@property (weak, nonatomic) IBOutlet UIImageView *coverImView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *coverActivityIndicator;
@property (weak, nonatomic) IBOutlet UIButton *favoriteBtn;
@property (weak, nonatomic) IBOutlet UIButton *readBtn;

- (instancetype)initWithBook:(JARBook *)aBook;


@end
