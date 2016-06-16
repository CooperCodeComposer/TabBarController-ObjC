//
//  AppDelegate.h
//  TabBarController-ObjC
//
//  Created by Alistair Cooper on 5/2/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"
#import "WorldMapViewController.h"
#import "WebsiteViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tab;
@property (strong, nonatomic) UINavigationController *navForTable;
@property (strong, nonatomic) UINavigationBar *navBar;
@property (strong, nonatomic) TableViewController *vc1;
@property (strong, nonatomic) WorldMapViewController *vc2;
@property (strong, nonatomic) WebsiteViewController *vc3;
@property (strong, nonatomic) UITabBar *tabBar;


@end

