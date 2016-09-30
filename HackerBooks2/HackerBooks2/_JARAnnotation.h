// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARAnnotation.h instead.

@import CoreData;
#import "JARLibraryBaseClass.h"

extern const struct JARAnnotationAttributes {
	__unsafe_unretained NSString *text;
	__unsafe_unretained NSString *title;
} JARAnnotationAttributes;

extern const struct JARAnnotationRelationships {
	__unsafe_unretained NSString *book;
	__unsafe_unretained NSString *date;
	__unsafe_unretained NSString *location;
	__unsafe_unretained NSString *photo;
} JARAnnotationRelationships;

@class JARBook;
@class JARDate;
@class JARLocation;
@class JARPhoto;

@interface JARAnnotationID : NSManagedObjectID {}
@end

@interface _JARAnnotation : JARLibraryBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARAnnotationID* objectID;

@property (nonatomic, strong) NSString* text;

//- (BOOL)validateText:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* title;

//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) JARBook *book;

//- (BOOL)validateBook:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) JARDate *date;

//- (BOOL)validateDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) JARLocation *location;

//- (BOOL)validateLocation:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) JARPhoto *photo;

//- (BOOL)validatePhoto:(id*)value_ error:(NSError**)error_;

@end

@interface _JARAnnotation (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveText;
- (void)setPrimitiveText:(NSString*)value;

- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;

- (JARBook*)primitiveBook;
- (void)setPrimitiveBook:(JARBook*)value;

- (JARDate*)primitiveDate;
- (void)setPrimitiveDate:(JARDate*)value;

- (JARLocation*)primitiveLocation;
- (void)setPrimitiveLocation:(JARLocation*)value;

- (JARPhoto*)primitivePhoto;
- (void)setPrimitivePhoto:(JARPhoto*)value;

@end
