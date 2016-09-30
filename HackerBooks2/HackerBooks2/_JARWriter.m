// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARWriter.m instead.

#import "_JARWriter.h"

const struct JARWriterAttributes JARWriterAttributes = {
	.name = @"name",
};

const struct JARWriterRelationships JARWriterRelationships = {
	.authors = @"authors",
};

@implementation JARWriterID
@end

@implementation _JARWriter

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Writer" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Writer";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Writer" inManagedObjectContext:moc_];
}

- (JARWriterID*)objectID {
	return (JARWriterID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic name;

@dynamic authors;

- (NSMutableSet*)authorsSet {
	[self willAccessValueForKey:@"authors"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"authors"];

	[self didAccessValueForKey:@"authors"];
	return result;
}

@end

