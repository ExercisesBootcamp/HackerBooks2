// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARCover.m instead.

#import "_JARCover.h"

const struct JARCoverRelationships JARCoverRelationships = {
	.book = @"book",
};

@implementation JARCoverID
@end

@implementation _JARCover

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Cover" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Cover";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Cover" inManagedObjectContext:moc_];
}

- (JARCoverID*)objectID {
	return (JARCoverID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic book;

@end

