//
//  JARViewController+Navigation.m
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 30/9/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import "JARViewController+Navigation.h"

@implementation UIViewController (Navigation)

- (UINavigationController *)wrappedInNavigationController {
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:self];
    return nav;
}

@end
