// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARBookResource.m instead.

#import "_JARBookResource.h"

const struct JARBookResourceAttributes JARBookResourceAttributes = {
	.data = @"data",
	.urlString = @"urlString",
};

@implementation JARBookResourceID
@end

@implementation _JARBookResource

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BookResource" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BookResource";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BookResource" inManagedObjectContext:moc_];
}

- (JARBookResourceID*)objectID {
	return (JARBookResourceID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic data;

@dynamic urlString;

@end

