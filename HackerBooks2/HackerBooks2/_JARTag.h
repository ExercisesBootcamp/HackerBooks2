// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARTag.h instead.

@import CoreData;
#import "JARLibraryBaseClass.h"

extern const struct JARTagRelationships {
	__unsafe_unretained NSString *book;
	__unsafe_unretained NSString *label;
} JARTagRelationships;

@class JARBook;
@class JARLabel;

@interface JARTagID : NSManagedObjectID {}
@end

@interface _JARTag : JARLibraryBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARTagID* objectID;

@property (nonatomic, strong) JARBook *book;

//- (BOOL)validateBook:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) JARLabel *label;

//- (BOOL)validateLabel:(id*)value_ error:(NSError**)error_;

@end

@interface _JARTag (CoreDataGeneratedPrimitiveAccessors)

- (JARBook*)primitiveBook;
- (void)setPrimitiveBook:(JARBook*)value;

- (JARLabel*)primitiveLabel;
- (void)setPrimitiveLabel:(JARLabel*)value;

@end
