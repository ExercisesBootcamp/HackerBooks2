#import "_JARBook.h"

@interface JARBook : _JARBook {}
// Custom logic goes here.

+ (instancetype)bookFromDictionary:(NSDictionary *)JSON
                       withContext:(NSManagedObjectContext *)context;

- (BOOL)isFavoriteBook;
- (BOOL)isPDFAvailable;

- (NSArray *)authorList;
- (NSArray *)tagList;
- (NSArray *)tagListExceptFavorite;


@end
