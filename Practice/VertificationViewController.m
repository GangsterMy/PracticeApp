//
//  VertificationViewController.m
//  Practice
//
//  Created by 赵麦 on 8/28/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "VertificationViewController.h"
#import <SMS_SDK/SMSSDK.h>
#import "RegisterViewController.h"


@interface VertificationViewController ()

@end

@implementation VertificationViewController
- (IBAction)sendVertificationCode:(id)sender {
    
    [SMSSDK commitVerificationCode:_vertificationCode.text phoneNumber:nil zone:@"86" result:^(NSError *error) {
        if (!error) {
            NSLog(@"验证成功");
        } else {
            NSLog(@"错误信息:%@", error);
        }
    }];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    navItem.title = @"注册";
    [navBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil]];
    // Do any additional setup after loading the view.
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
