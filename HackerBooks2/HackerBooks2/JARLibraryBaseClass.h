//
//  JARLibraryBaseClass.h
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 30/9/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface JARLibraryBaseClass : NSManagedObject

+ (NSArray *)observableKeys;

- (NSData *)archiveURIRepresentation;
+ (instancetype)unarchiveObjectWithURIRepresentation:(NSData *)archivedURI context:(NSManagedObjectContext *)context;

@end
