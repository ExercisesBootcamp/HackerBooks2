// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARPhoto.h instead.

@import CoreData;
#import "JARLibraryBaseClass.h"

extern const struct JARPhotoAttributes {
	__unsafe_unretained NSString *photoData;
} JARPhotoAttributes;

extern const struct JARPhotoRelationships {
	__unsafe_unretained NSString *annotation;
} JARPhotoRelationships;

@class JARAnnotation;

@interface JARPhotoID : NSManagedObjectID {}
@end

@interface _JARPhoto : JARLibraryBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARPhotoID* objectID;

@property (nonatomic, strong) NSData* photoData;

//- (BOOL)validatePhotoData:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *annotation;

- (NSMutableSet*)annotationSet;

@end

@interface _JARPhoto (AnnotationCoreDataGeneratedAccessors)
- (void)addAnnotation:(NSSet*)value_;
- (void)removeAnnotation:(NSSet*)value_;
- (void)addAnnotationObject:(JARAnnotation*)value_;
- (void)removeAnnotationObject:(JARAnnotation*)value_;

@end

@interface _JARPhoto (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitivePhotoData;
- (void)setPrimitivePhotoData:(NSData*)value;

- (NSMutableSet*)primitiveAnnotation;
- (void)setPrimitiveAnnotation:(NSMutableSet*)value;

@end
