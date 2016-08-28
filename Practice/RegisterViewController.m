//
//  RegisterViewController.m
//  Practice
//
//  Created by 赵麦 on 8/28/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "RegisterViewController.h"
#import "LoginViewController.h"
#import <SMS_SDK/SMSSDK.h>

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (IBAction)getVertificationCode:(id)sender {

    [SMSSDK getVerificationCodeByMethod:0 phoneNumber:_phoneNum.text zone:@"86" customIdentifier:nil result:^(NSError *error) {
        if (!error) {
            NSLog(@"获取验证码成功");
        } else {
            NSLog(@"获取验证码失败");
        }
    }];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    navItem.title = @"注册";
    [navBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil]];
    navItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
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
