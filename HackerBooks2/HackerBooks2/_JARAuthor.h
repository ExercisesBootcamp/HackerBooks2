// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARAuthor.h instead.

@import CoreData;
#import "JARLibraryBaseClass.h"

extern const struct JARAuthorRelationships {
	__unsafe_unretained NSString *book;
	__unsafe_unretained NSString *writer;
} JARAuthorRelationships;

@class JARBook;
@class JARWriter;

@interface JARAuthorID : NSManagedObjectID {}
@end

@interface _JARAuthor : JARLibraryBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARAuthorID* objectID;

@property (nonatomic, strong) JARBook *book;

//- (BOOL)validateBook:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) JARWriter *writer;

//- (BOOL)validateWriter:(id*)value_ error:(NSError**)error_;

@end

@interface _JARAuthor (CoreDataGeneratedPrimitiveAccessors)

- (JARBook*)primitiveBook;
- (void)setPrimitiveBook:(JARBook*)value;

- (JARWriter*)primitiveWriter;
- (void)setPrimitiveWriter:(JARWriter*)value;

@end
