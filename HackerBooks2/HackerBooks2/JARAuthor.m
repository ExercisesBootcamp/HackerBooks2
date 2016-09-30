#import "JARAuthor.h"
#import "JARWriter.h"

@interface JARAuthor ()

// Private interface goes here.

@end

@implementation JARAuthor

// Custom logic goes here.
+ (instancetype)authorNamed:(NSString *)name
                     ofBook:(JARBook *)book
                withContext:(NSManagedObjectContext *)context {
    
    JARAuthor *author = [JARAuthor insertInManagedObjectContext:context];
    author.writer = [JARWriter writerNamed:name withContext:context];
    author.book = book;
    
    return author;
}

@end
