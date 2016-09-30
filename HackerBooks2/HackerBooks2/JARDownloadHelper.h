//
//  JARDownloadHelper.h
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 30/9/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JARDownloadHelper : NSObject

// Devuelve la lista de libros recibidos del servidor
+ (NSArray *)downloadBookList;

@end
