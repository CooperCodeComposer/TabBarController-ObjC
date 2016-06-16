//
//  WebsiteViewController.m
//  TabBarController-ObjC
//
//  Created by Alistair Cooper on 5/2/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import "WebsiteViewController.h"

@interface WebsiteViewController ()

@end

@implementation WebsiteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *webview=[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 1024,768)];
    webview.frame = self.view.bounds;
    NSString *url=@"http://www.imdb.com";  // requires changing info.plist + invalidates entry to app store (fame + $$$)
    NSURL *nsurl=[NSURL URLWithString:url];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    
    webview.scrollView.scrollEnabled = true;
    webview.scalesPageToFit = true;
    
    webview.delegate = self;
    
    [webview loadRequest:nsrequest];
    
    [self.view addSubview:webview];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
