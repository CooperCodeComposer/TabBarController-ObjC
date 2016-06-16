//
//  AppDelegate.m
//  TabBarController-ObjC
//
//  Created by Alistair Cooper on 5/2/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // setup viewController for nav with film composer table / detail view controller
    self.vc1 = [[TableViewController alloc] initWithNibName:nil bundle:nil];
    self.vc1.title = @"film music";
    self.vc1.tabBarItem.image = [UIImage imageNamed:@"trumpet"];
    
    self.navForTable = [[UINavigationController alloc] initWithRootViewController:self.vc1];
    
    // style the nav bar
    self.navBar = self.navForTable.navigationBar;
    self.navBar.barStyle = UIBarStyleBlack;

    // setup ViewController for scroll view of world map
    self.vc2 = [[WorldMapViewController alloc] initWithNibName:nil bundle:nil];
    self.vc2.view.backgroundColor = [UIColor clearColor];
    self.vc2.title = @"earth";
    self.vc2.tabBarItem.image = [UIImage imageNamed:@"globe"];
    
    // setup ViewController for webview of imdb site
    self.vc3 = [[WebsiteViewController alloc] initWithNibName:nil bundle:nil];
    self.vc3.view.backgroundColor = [UIColor clearColor];
    self.vc3.title = @"imdb";
    self.vc3.tabBarItem.image = [UIImage imageNamed:@"ticket"];
    
    self.tab = [[UITabBarController alloc] initWithNibName:nil bundle:nil];
    
    // style the tab bar
    self.tabBar = self.tab.tabBar;
    self.tabBar.barStyle = UIBarStyleBlack;
    
    self.tab.viewControllers = @[self.navForTable, self.vc2, self.vc3];
    
    self.window.rootViewController = self.tab;
    
    [self.window makeKeyAndVisible];
    

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
