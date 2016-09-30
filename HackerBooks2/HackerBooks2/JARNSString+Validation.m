//
//  JARNSString+Validation.m
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 30/9/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import "JARNSString+Validation.h"

@implementation NSString (Validation)

+ (BOOL)isEmpty:(NSString *)value {
    value = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return value == nil || value == (id)[NSNull null] || [value isEqualToString:@""] ||
    ([value respondsToSelector:@selector(length)] && [value length] == 0);
}

@end
