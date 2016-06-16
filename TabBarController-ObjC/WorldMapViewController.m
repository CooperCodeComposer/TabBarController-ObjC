//
//  WorldMapViewController.m
//  TabBarController-ObjC
//
//  Created by Alistair Cooper on 5/2/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import "WorldMapViewController.h"

@interface WorldMapViewController ()

@end

@implementation WorldMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = self.view.bounds;
    scrollView.contentSize = CGSizeMake(3600.0,1800.0);
    scrollView.showsVerticalScrollIndicator = true;
    scrollView.showsHorizontalScrollIndicator = true;
    scrollView.scrollEnabled = true;
    scrollView.maximumZoomScale = 4.0;
    scrollView.minimumZoomScale = 1.0;
    
    [self.view addSubview:scrollView];
    
    scrollView.delegate = self;
    
    self.worldMapView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"worldMap"]];
    self.worldMapView.frame = CGRectMake(0, 0, 3600.0, 1800.0);
    
    [scrollView addSubview:self.worldMapView];
    
    [self.view addSubview:scrollView];



}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.worldMapView;
}

- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale; {
    
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
