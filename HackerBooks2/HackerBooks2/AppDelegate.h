//
//  AppDelegate.h
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 30/9/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

