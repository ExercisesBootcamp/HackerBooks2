//
//  JARAnnotationsVC.m
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 30/9/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import "JARAnnotationsVC.h"
#import "JARAnnotationDetailVC.h"
// models
#import "JARBook.h"
#import "JARAnnotation.h"
// others
#import "JARViewController+Navigation.h"
#import "JARAnnotationViewCell.h"
#import "NotificationKeys.h"

static NSString *cellId = @"AnnotationCellId";

@implementation JARAnnotationsVC

#pragma mark -  View events

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self registerCell];
    
    self.title = @"Annotations";
    self.collectionView.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
    
    // Notifications **********************
    [self registerForNotifications];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [self unregisterForNotifications];
}

#pragma mark - NSNotification

- (void)dealloc {
    [self unregisterForNotifications];
    //    [self unregisterForKVOs];
}

- (void)registerForNotifications {
    // Add your notification observer here
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notifyNewBookWasSelected:)
                                                 name:DID_SELECT_BOOK_NOTIFICATION
                                               object:nil];
}

- (void)unregisterForNotifications {
    // Clear out _all_ observations that this object was making
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

// DID_SELECT_BOOK_NOTIFICATION
- (void)notifyNewBookWasSelected:(NSNotification *)notification {
    
    JARBook *book = [notification.userInfo objectForKey:BOOK_KEY];
    
    // Fetch request
    NSFetchRequest *req = [NSFetchRequest fetchRequestWithEntityName:[JARAnnotation entityName]];
    req.sortDescriptors = @[[NSSortDescriptor
                             sortDescriptorWithKey:@"date.creation"
                             ascending:NO],
                            [NSSortDescriptor
                             sortDescriptorWithKey:@"date.modification"
                             ascending:NO],
                            [NSSortDescriptor
                             sortDescriptorWithKey:JARAnnotationAttributes.title
                             ascending:YES
                             selector:@selector(caseInsensitiveCompare:)]];
    req.fetchBatchSize = 20;
    req.predicate = [NSPredicate predicateWithFormat:@"book == %@", book];
    
    // Fetched Results Controller
    NSFetchedResultsController *fc = [[NSFetchedResultsController alloc]
                                      initWithFetchRequest:req
                                      managedObjectContext:self.fetchedResultsController.managedObjectContext
                                      sectionNameKeyPath:nil //@"date.creation"
                                      cacheName:nil];
    self.fetchedResultsController = fc;
    
    // Reload data
    [self performFetch];
}

#pragma mark - cell registration

- (void)registerCell {
    
    UINib *nib = [UINib nibWithNibName:@"JARAnnotationViewCell"
                                bundle:nil];
    [self.collectionView registerNib:nib
          forCellWithReuseIdentifier:cellId];
}

#pragma mark - UICollectionView Data Source

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    JARAnnotation *ann = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    JARAnnotationViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId
                                                                            forIndexPath:indexPath];
    // Configure
    [cell configureForAnnotation:ann];
    
    return cell;
}

#pragma mark - UICollectionView Delegates

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    JARAnnotation *ann = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    JARAnnotationDetailVC *annVC = [[JARAnnotationDetailVC alloc] initAnnotation:ann forBook:ann.book];
    [self presentViewController:[annVC wrappedInNavigationController] animated:YES completion:nil];
}


@end
