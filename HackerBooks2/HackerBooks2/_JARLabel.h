// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARLabel.h instead.

@import CoreData;
#import "JARLibraryBaseClass.h"

extern const struct JARLabelAttributes {
	__unsafe_unretained NSString *name;
} JARLabelAttributes;

extern const struct JARLabelRelationships {
	__unsafe_unretained NSString *tags;
} JARLabelRelationships;

@class JARTag;

@interface JARLabelID : NSManagedObjectID {}
@end

@interface _JARLabel : JARLibraryBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARLabelID* objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *tags;

- (NSMutableSet*)tagsSet;

@end

@interface _JARLabel (TagsCoreDataGeneratedAccessors)
- (void)addTags:(NSSet*)value_;
- (void)removeTags:(NSSet*)value_;
- (void)addTagsObject:(JARTag*)value_;
- (void)removeTagsObject:(JARTag*)value_;

@end

@interface _JARLabel (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSMutableSet*)primitiveTags;
- (void)setPrimitiveTags:(NSMutableSet*)value;

@end
