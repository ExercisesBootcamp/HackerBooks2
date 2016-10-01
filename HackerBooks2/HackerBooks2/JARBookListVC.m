//
//  JARBookListVC.m
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 1/10/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import "JARBookListVC.h"
#import "JARSearchResultsVC.h"
#import "JARBookDetailVC.h"
// model
#import "JARBook.h"
#import "JARTag.h"
#import "JARLabel.h"
// others
#import "JARNSString+Validation.h"
#import "JARViewController+Navigation.h"
#import "Settings.h"
#import "NotificationKeys.h"

@interface JARBookListVC ()

@property (nonatomic, strong) JARSearchResultsVC *srVC;

@end

@implementation JARBookListVC

#pragma mark - View events

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Hacker Books 2.0";
    
    // Search Results Controller
    [self configureSearchController];
}

#pragma mark - UITableView Delegate
// here we are the table view delegate for both our main table and filtered table, so we can
// push from the current navigation controller (resultsTableController's parent view controller
// is not this UINavigationController)
//
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Get data for indexPath
    JARBook *book = [self bookAtIndexPath:indexPath];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        // Notify BOOK was selected - ONLY FOR iPad VERSION
        NSDictionary *dict = @{BOOK_KEY:book};
        [[NSNotificationCenter defaultCenter] postNotificationName:DID_SELECT_BOOK_NOTIFICATION
                                                            object:self
                                                          userInfo:dict];
    } else {
        // For iPhone
        JARBookDetailVC *bookVC = [[JARBookDetailVC alloc] initWithBook:book];
        bookVC.delegate = self;
        [self.navigationController pushViewController:bookVC animated:YES];
    }
    
    // Remember last selected book
    NSData *uri = [book archiveURIRepresentation];
    [[NSUserDefaults standardUserDefaults] setObject:uri forKey:LAST_SELECTED_BOOK];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark - JARBookDetailVCDelegate

- (void)bookDetailVC:(JARBookDetailVC *)bookDetailVC didMarkBookAsFavorite:(JARBook *)book {
    [self favoriteBook:book];
}

- (void)favoriteBook:(JARBook *)book {
    if ([book isFavoriteBook]) {
        JARTag *tag = [JARTag favoriteTagForBook:book];
        [self.fetchedResultsController.managedObjectContext deleteObject:tag];
    } else {
        [JARTag tagNamed:FAVORITE_LABEL ofBook:book withContext:self.fetchedResultsController.managedObjectContext];
    }
}

#pragma mark - Search Result Controller

- (void)configureSearchController {
    
    NSFetchedResultsController *frController = [self searchFRControllerWithRequest:[self searchFetchRequest]];
    self.srVC = [[JARSearchResultsVC alloc ]initWithFetchedResultsController:frController
                                                                       style:UITableViewStyleGrouped];
    self.srVC.tableView.delegate = self;  // filter table delegate
    
    self.searchController = [[UISearchController alloc] initWithSearchResultsController:self.srVC];
    self.searchController.delegate = self;
    self.searchController.searchResultsUpdater = self;
    self.searchController.dimsBackgroundDuringPresentation = NO; // default is YES
    // search bar
    [self.searchController.searchBar sizeToFit];
    self.searchController.searchBar.placeholder = @"Title, Author or Tag";
    self.searchController.searchBar.delegate = self; // so we can monitor text changes + others
    self.tableView.tableHeaderView = self.searchController.searchBar;
    self.definesPresentationContext = YES;  // know where you want UISearchController to be displayed
}

- (NSFetchRequest *)searchFetchRequest {
    // Request
    NSFetchRequest *req = [NSFetchRequest fetchRequestWithEntityName:[JARBook entityName]];
    NSSortDescriptor *sortTitle = [NSSortDescriptor sortDescriptorWithKey:@"title"
                                                                ascending:YES
                                                                 selector:@selector(caseInsensitiveCompare:)];
    req.sortDescriptors = @[sortTitle];
    req.fetchBatchSize = 20;
    
    return req;
}

- (NSFetchedResultsController *)searchFRControllerWithRequest:(NSFetchRequest *)request {
    
    return [[NSFetchedResultsController alloc] initWithFetchRequest:request
                                               managedObjectContext:self.fetchedResultsController.managedObjectContext
                                                 sectionNameKeyPath:nil
                                                          cacheName:nil];
}

#pragma mark - UISearchBarDelegate

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [searchBar resignFirstResponder];
}

#pragma mark - UISearchControllerDelegate & UISearchResultsDelegate

// Called when the search bar becomes first responder
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    
    // Set searchString equal to what's typed into the searchbar
    NSString *searchString = self.searchController.searchBar.text;
    
    NSFetchRequest *req = [self searchFetchRequest];
    if (![NSString isEmpty:searchString]) {
        // Add Filter
        NSPredicate *titleOrAuthorOrTag = [NSPredicate predicateWithFormat:@"(title CONTAINS[cd] %@) OR (authors.writer.name CONTAINS[cd] %@) OR (tags.label.name CONTAINS[cd] %@)", searchString, searchString,searchString];
        
        req.predicate = titleOrAuthorOrTag;
    }
    
    NSFetchedResultsController *frController = [self searchFRControllerWithRequest:req];
    self.srVC.fetchedResultsController = frController;
}

#pragma mark - UISearchControllerDelegate

// Called after the search controller's search bar has agreed to begin editing or when
// 'active' is set to YES.
// If you choose not to present the controller yourself or do not implement this method,
// a default presentation is performed on your behalf.
//
// Implement this method if the default presentation is not adequate for your purposes.
//
- (void)presentSearchController:(UISearchController *)searchController {
    
}

- (void)willPresentSearchController:(UISearchController *)searchController {
    // do something before the search controller is presented
}

- (void)didPresentSearchController:(UISearchController *)searchController {
    // do something after the search controller is presented
}

- (void)willDismissSearchController:(UISearchController *)searchController {
    // do something before the search controller is dismissed
}

- (void)didDismissSearchController:(UISearchController *)searchController {
    // do something after the search controller is dismissed
}

@end
