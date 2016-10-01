//
//  JARBaseTableVC.m
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 1/10/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import "JARBaseTableVC.h"
#import "JARBook.h"
#import "JARTag.h"

@implementation JARBaseTableVC

#pragma mark - View events

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

#pragma mark - UITableView DataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Load data for indexPath
    JARBook *book = [self bookAtIndexPath:indexPath];
    
    // Create the cell
    static NSString *cellID = @"bookCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    // Configure cell
    cell.textLabel.text = book.title;
    cell.detailTextLabel.text = [[book authorList] componentsJoinedByString:@" ,"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - UITableView Delegate

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55.;
}

#pragma mark - Utils

- (JARTag *)tagAtIndex:(NSIndexPath *)indexPath {
    JARTag *tag = [self.fetchedResultsController objectAtIndexPath:indexPath];
    return tag;
}

- (JARBook *)bookAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *entityName = self.fetchedResultsController.fetchRequest.entityName;
    JARBook *book;
    if ([entityName isEqualToString:[JARTag entityName]]) {
        JARTag *tag = [self tagAtIndex:indexPath];
        book = tag.book;
    } else if ([entityName isEqualToString:[JARBook entityName]]) {
        book = [self.fetchedResultsController objectAtIndexPath:indexPath];
    }
    return book;
}

@end
