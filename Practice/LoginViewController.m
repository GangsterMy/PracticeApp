//
//  ViewController.m
//  Practice
//
//  Created by 赵麦 on 8/26/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "LoginViewController.h"
#import <SMS_SDK/SMSSDK.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"应用名称";
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
