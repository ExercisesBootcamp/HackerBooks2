#import "_JARPdf.h"

@interface JARPdf : _JARPdf {}
// Custom logic goes here.

+ (instancetype)pdfForURL:(NSURL *)aURL withContext:(NSManagedObjectContext *)context;

- (void)fetchPDFDataWithCompletion:(void(^)(NSData *pdfData))completionBlock;

@end
