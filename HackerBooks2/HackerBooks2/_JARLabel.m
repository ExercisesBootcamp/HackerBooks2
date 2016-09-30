// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARLabel.m instead.

#import "_JARLabel.h"

const struct JARLabelAttributes JARLabelAttributes = {
	.name = @"name",
};

const struct JARLabelRelationships JARLabelRelationships = {
	.tags = @"tags",
};

@implementation JARLabelID
@end

@implementation _JARLabel

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Label" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Label";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Label" inManagedObjectContext:moc_];
}

- (JARLabelID*)objectID {
	return (JARLabelID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic name;

@dynamic tags;

- (NSMutableSet*)tagsSet {
	[self willAccessValueForKey:@"tags"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tags"];

	[self didAccessValueForKey:@"tags"];
	return result;
}

@end

