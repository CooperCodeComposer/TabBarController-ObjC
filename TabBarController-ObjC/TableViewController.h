//
//  TableViewController.h
//  TabBarController-ObjC
//
//  Created by Alistair Cooper on 5/2/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface TableViewController : UITableViewController

@property() NSMutableArray *items;
@property (strong, nonatomic) DetailViewController *vcDetail;

@end
