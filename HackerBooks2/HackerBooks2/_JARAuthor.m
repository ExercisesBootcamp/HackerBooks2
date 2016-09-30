// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JARAuthor.m instead.

#import "_JARAuthor.h"

const struct JARAuthorRelationships JARAuthorRelationships = {
	.book = @"book",
	.writer = @"writer",
};

@implementation JARAuthorID
@end

@implementation _JARAuthor

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Author" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Author";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Author" inManagedObjectContext:moc_];
}

- (JARAuthorID*)objectID {
	return (JARAuthorID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic book;

@dynamic writer;

@end

