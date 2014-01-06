//
//  ZZZDetailViewController.h
//  MasterDetailApp
//
//  Created by Gaetan EYHERAMONO on 12/16/13.
//  Copyright (c) 2013 Gaetan EYHERAMONO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZZZDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end