// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARPdf.h instead.

@import CoreData;
#import "JARBookResource.h"

extern const struct JARPdfRelationships {
	__unsafe_unretained NSString *book;
} JARPdfRelationships;

@class JARBook;

@interface JARPdfID : JARBookResourceID {}
@end

@interface _JARPdf : JARBookResource {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARPdfID* objectID;

@property (nonatomic, strong) JARBook *book;

//- (BOOL)validateBook:(id*)value_ error:(NSError**)error_;

@end

@interface _JARPdf (CoreDataGeneratedPrimitiveAccessors)

- (JARBook*)primitiveBook;
- (void)setPrimitiveBook:(JARBook*)value;

@end
