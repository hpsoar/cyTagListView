//
//  ViewController.m
//  cyTagListView
//
//  Created by HuangPeng on 11/18/15.
//  Copyright © 2015 SpringRain. All rights reserved.
//

#import "ViewController.h"
#import "cySimpleTagListView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    cySimpleTagListLayout *layout = [cySimpleTagListLayout new];
    layout.insets = UIEdgeInsetsMake(10, 10, 10, 10);
    layout.maxWidth = CGRectGetMaxX(self.view.frame);
    layout.xSpace = 10;
    layout.ySapce = 10;
    
    NSArray *tags = @[ @"add发", @"add发", @"add发", @"add发", @"add发", @"add发", @"add发", @"add发", @"add发", @"add发", ];
    NSArray *tagItems = [cySimpleTagListItem itemsWithTags:tags];
    
    cySimpleTagListView *v1 = [[cySimpleTagListView alloc] initWithFrame:CGRectMake(0, 100, 0, 0) layout:layout];
    v1.backgroundColor = [UIColor greenColor];
    [v1 updateWithTags:tagItems];
    
    cySimpleTagListView *v2 = [[cySimpleTagListView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(v1.frame), 0, 0) layout:layout];
    [v2 updateWithTags:tagItems];
    
    cySimpleTagListView *v3 = [[cySimpleTagListView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(v2.frame), 0, 0) layout:layout];
    [v3 updateWithTags:tagItems];
    
    cySimpleTagListView *v4 = [[cySimpleTagListView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(v3.frame), 0, 0) layout:layout];
    [v4 updateWithTags:tagItems];
    
    [self.view addSubview:v1];
    [self.view addSubview:v2];
    [self.view addSubview:v3];
    [self.view addSubview:v4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
