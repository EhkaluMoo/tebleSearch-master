//
//  xtzViewController.h
//  testing
//
//  Created by Ehkalu Moo on 11/18/14.
//  Copyright (c) 2014 Ehkalu Moo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface xtzViewController : UIViewController <UITableViewDataSource, UITableViewDelegate,UISearchBarDelegate,UISearchDisplayDelegate>

@property (weak, nonatomic) IBOutlet UITableView *mytableview;

@property (strong, nonatomic) IBOutlet UISearchBar *SearchBar;

@end
