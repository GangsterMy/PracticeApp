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
    
    navBar.translucent = NO;
    navBar.barTintColor = appGreen;
    navBar.tintColor = [UIColor whiteColor];
    [navBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil]];
    
    navItem.title = @"应用名称";
    navItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
