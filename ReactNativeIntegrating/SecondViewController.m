//
//  SecondViewController.m
//  ReactNativeIntegrating
//
//  Created by yangchenghu on 15/12/24.
//  Copyright © 2015年 yangchenghu. All rights reserved.
//

#import "SecondViewController.h"

#import "ReactView.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ReactView * reactView = [[ReactView alloc] initWithFrame:CGRectMake(0, 40, CGRectGetWidth(self.view.bounds), 100)];
    
    [self.view addSubview:reactView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
