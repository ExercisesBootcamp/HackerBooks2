// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARDate.m instead.

#import "_JARDate.h"

const struct JARDateAttributes JARDateAttributes = {
	.creation = @"creation",
	.modification = @"modification",
};

const struct JARDateRelationships JARDateRelationships = {
	.annotation = @"annotation",
};

@implementation JARDateID
@end

@implementation _JARDate

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Date" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Date";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Date" inManagedObjectContext:moc_];
}

- (JARDateID*)objectID {
	return (JARDateID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic creation;

@dynamic modification;

@dynamic annotation;

@end

