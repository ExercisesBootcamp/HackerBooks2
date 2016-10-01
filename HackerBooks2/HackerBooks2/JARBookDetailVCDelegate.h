//
//  JARBookDetailVCDelegate.h
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 1/10/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

@import Foundation;

@class JARBookDetailVC;
@class JARBook;

@protocol JARBookDetailVCDelegate <NSObject>

@optional
- (void)bookDetailVC:(JARBookDetailVC *)bookDetailVC didMarkBookAsFavorite:(JARBook *)book;

@end
