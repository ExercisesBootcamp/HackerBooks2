//
//  JARBaseTableVC.h
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 1/10/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import "AGTCoreDataTableViewController.h"
#import "JARBookDetailVCDelegate.h"

@class JARBook;
@class JARTag;

@interface JARBaseTableVC : AGTCoreDataTableViewController <JARBookDetailVCDelegate>


- (JARBook *)bookAtIndexPath:(NSIndexPath *)indexPath;

@end

