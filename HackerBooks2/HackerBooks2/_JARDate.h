// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARDate.h instead.

@import CoreData;
#import "JARLibraryBaseClass.h"

extern const struct JARDateAttributes {
	__unsafe_unretained NSString *creation;
	__unsafe_unretained NSString *modification;
} JARDateAttributes;

extern const struct JARDateRelationships {
	__unsafe_unretained NSString *annotation;
} JARDateRelationships;

@class JARAnnotation;

@interface JARDateID : NSManagedObjectID {}
@end

@interface _JARDate : JARLibraryBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARDateID* objectID;

@property (nonatomic, strong) NSDate* creation;

//- (BOOL)validateCreation:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* modification;

//- (BOOL)validateModification:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) JARAnnotation *annotation;

//- (BOOL)validateAnnotation:(id*)value_ error:(NSError**)error_;

@end

@interface _JARDate (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreation;
- (void)setPrimitiveCreation:(NSDate*)value;

- (NSDate*)primitiveModification;
- (void)setPrimitiveModification:(NSDate*)value;

- (JARAnnotation*)primitiveAnnotation;
- (void)setPrimitiveAnnotation:(JARAnnotation*)value;

@end
