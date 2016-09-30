// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARBookResource.h instead.

@import CoreData;
#import "JARLibraryBaseClass.h"

extern const struct JARBookResourceAttributes {
	__unsafe_unretained NSString *data;
	__unsafe_unretained NSString *urlString;
} JARBookResourceAttributes;

@interface JARBookResourceID : NSManagedObjectID {}
@end

@interface _JARBookResource : JARLibraryBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARBookResourceID* objectID;

@property (nonatomic, strong) NSData* data;

//- (BOOL)validateData:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* urlString;

//- (BOOL)validateUrlString:(id*)value_ error:(NSError**)error_;

@end

@interface _JARBookResource (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitiveData;
- (void)setPrimitiveData:(NSData*)value;

- (NSString*)primitiveUrlString;
- (void)setPrimitiveUrlString:(NSString*)value;

@end
