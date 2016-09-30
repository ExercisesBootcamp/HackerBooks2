// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARAnnotation.m instead.

#import "_JARAnnotation.h"

const struct JARAnnotationAttributes JARAnnotationAttributes = {
	.text = @"text",
	.title = @"title",
};

const struct JARAnnotationRelationships JARAnnotationRelationships = {
	.book = @"book",
	.date = @"date",
	.location = @"location",
	.photo = @"photo",
};

@implementation JARAnnotationID
@end

@implementation _JARAnnotation

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Annotation" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Annotation";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Annotation" inManagedObjectContext:moc_];
}

- (JARAnnotationID*)objectID {
	return (JARAnnotationID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic text;

@dynamic title;

@dynamic book;

@dynamic date;

@dynamic location;

@dynamic photo;

@end

