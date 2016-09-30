//
//  JARDownloadHelper.m
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 30/9/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import "JARDownloadHelper.h"

@implementation JARDownloadHelper

+ (NSArray *)downloadBookList {
    
    // Download library JSON
    NSData *libraryData = [self downloadLibraryDataFromServer];
    
    // Parse JSON
    NSError *error;
    id JSONObject = [NSJSONSerialization JSONObjectWithData:libraryData
                                                    options:kNilOptions
                                                      error:&error];
    
    if (JSONObject == nil || error) {
        NSLog(@"JSON Parse failed with error: %@", error.userInfo);
        return nil;
    }
    
    // Create bookList (Array of dictionaries)
    NSArray *bookList;
    if ([JSONObject isKindOfClass:[NSArray class]]) {  // Array of dictionaries
        bookList = (NSArray *)JSONObject;
    } else if ([JSONObject isKindOfClass:[NSDictionary class]]) {   // A dictionary
        bookList = @[(NSDictionary *)JSONObject];
    }
    
    return bookList;
}

+ (NSData *)downloadLibraryDataFromServer {
    // Descargamos libros
    NSData *libraryData = [JARDownloadHelper downloadJSONFromURL:[NSURL URLWithString:@"https://t.co/K9ziV0z3SJ"]];
    return libraryData;
}

#pragma mark - Helpers

+ (NSData *)downloadJSONFromURL:(NSURL *)jsonURL {
    
    NSURLRequest *request = [NSURLRequest requestWithURL:jsonURL];
    
    NSError *error;
    NSURLResponse *response = [[NSURLResponse alloc] init];
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    if (error || data == nil) {
        NSLog(@"Fallo en la descarga. Error: %@", error.localizedDescription);
    }
    
    return data;
}


@end
