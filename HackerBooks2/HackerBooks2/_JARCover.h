// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARCover.h instead.

@import CoreData;
#import "JARBookResource.h"

extern const struct JARCoverRelationships {
	__unsafe_unretained NSString *book;
} JARCoverRelationships;

@class JARBook;

@interface JARCoverID : JARBookResourceID {}
@end

@interface _JARCover : JARBookResource {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARCoverID* objectID;

@property (nonatomic, strong) JARBook *book;

//- (BOOL)validateBook:(id*)value_ error:(NSError**)error_;

@end

@interface _JARCover (CoreDataGeneratedPrimitiveAccessors)

- (JARBook*)primitiveBook;
- (void)setPrimitiveBook:(JARBook*)value;

@end
