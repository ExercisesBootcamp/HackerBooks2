//
//  JARSimplePDFVC.h
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 1/10/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

@import UIKit;

@class JARBook;

@interface JARSimplePDFVC : UIViewController <UIWebViewDelegate>

@property (nonatomic, readonly) JARBook *book;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityView;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (id)initWithBook:(JARBook *)aBook;

@end
