//
//  ZZZMasterViewController.h
//  MasterDetailApp
//
//  Created by Gaetan EYHERAMONO on 12/16/13.
//  Copyright (c) 2013 Gaetan EYHERAMONO. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZZZDetailViewController;

@interface ZZZMasterViewController : UITableViewController

@property (strong, nonatomic) ZZZDetailViewController *detailViewController;

@end
