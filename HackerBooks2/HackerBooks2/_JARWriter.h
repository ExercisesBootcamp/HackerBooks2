// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARWriter.h instead.

@import CoreData;
#import "JARLibraryBaseClass.h"

extern const struct JARWriterAttributes {
	__unsafe_unretained NSString *name;
} JARWriterAttributes;

extern const struct JARWriterRelationships {
	__unsafe_unretained NSString *authors;
} JARWriterRelationships;

@class JARAuthor;

@interface JARWriterID : NSManagedObjectID {}
@end

@interface _JARWriter : JARLibraryBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARWriterID* objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *authors;

- (NSMutableSet*)authorsSet;

@end

@interface _JARWriter (AuthorsCoreDataGeneratedAccessors)
- (void)addAuthors:(NSSet*)value_;
- (void)removeAuthors:(NSSet*)value_;
- (void)addAuthorsObject:(JARAuthor*)value_;
- (void)removeAuthorsObject:(JARAuthor*)value_;

@end

@interface _JARWriter (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSMutableSet*)primitiveAuthors;
- (void)setPrimitiveAuthors:(NSMutableSet*)value;

@end
