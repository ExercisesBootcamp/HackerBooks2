// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARBook.h instead.

@import CoreData;
#import "JARLibraryBaseClass.h"

extern const struct JARBookAttributes {
	__unsafe_unretained NSString *title;
} JARBookAttributes;

extern const struct JARBookRelationships {
	__unsafe_unretained NSString *annotations;
	__unsafe_unretained NSString *authors;
	__unsafe_unretained NSString *cover;
	__unsafe_unretained NSString *pdf;
	__unsafe_unretained NSString *tags;
} JARBookRelationships;

@class JARAnnotation;
@class JARAuthor;
@class JARCover;
@class JARPdf;
@class JARTag;

@interface JARBookID : NSManagedObjectID {}
@end

@interface _JARBook : JARLibraryBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JARBookID* objectID;

@property (nonatomic, strong) NSString* title;

//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *annotations;

- (NSMutableSet*)annotationsSet;

@property (nonatomic, strong) NSSet *authors;

- (NSMutableSet*)authorsSet;

@property (nonatomic, strong) JARCover *cover;

//- (BOOL)validateCover:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) JARPdf *pdf;

//- (BOOL)validatePdf:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *tags;

- (NSMutableSet*)tagsSet;

@end

@interface _JARBook (AnnotationsCoreDataGeneratedAccessors)
- (void)addAnnotations:(NSSet*)value_;
- (void)removeAnnotations:(NSSet*)value_;
- (void)addAnnotationsObject:(JARAnnotation*)value_;
- (void)removeAnnotationsObject:(JARAnnotation*)value_;

@end

@interface _JARBook (AuthorsCoreDataGeneratedAccessors)
- (void)addAuthors:(NSSet*)value_;
- (void)removeAuthors:(NSSet*)value_;
- (void)addAuthorsObject:(JARAuthor*)value_;
- (void)removeAuthorsObject:(JARAuthor*)value_;

@end

@interface _JARBook (TagsCoreDataGeneratedAccessors)
- (void)addTags:(NSSet*)value_;
- (void)removeTags:(NSSet*)value_;
- (void)addTagsObject:(JARTag*)value_;
- (void)removeTagsObject:(JARTag*)value_;

@end

@interface _JARBook (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;

- (NSMutableSet*)primitiveAnnotations;
- (void)setPrimitiveAnnotations:(NSMutableSet*)value;

- (NSMutableSet*)primitiveAuthors;
- (void)setPrimitiveAuthors:(NSMutableSet*)value;

- (JARCover*)primitiveCover;
- (void)setPrimitiveCover:(JARCover*)value;

- (JARPdf*)primitivePdf;
- (void)setPrimitivePdf:(JARPdf*)value;

- (NSMutableSet*)primitiveTags;
- (void)setPrimitiveTags:(NSMutableSet*)value;

@end
