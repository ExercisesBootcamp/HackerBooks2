//
//  JARBookListVC.h
//  HackerBooks2
//
//  Created by Juan Arillo Ruiz on 1/10/16.
//  Copyright © 2016 Juan Arillo Ruiz. All rights reserved.
//

#import "JARBaseTableVC.h"

@interface JARBookListVC : JARBaseTableVC <UISearchBarDelegate,UISearchResultsUpdating,UISearchControllerDelegate>

@property (nonatomic, strong) UISearchController *searchController;

@end
