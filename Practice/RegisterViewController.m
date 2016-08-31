//
//  RegisterViewController.m
//  Practice
//
//  Created by 赵麦 on 8/28/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "RegisterViewController.h"
#import "LoginViewController.h"
#import "VertificationViewController.h"
#import <SMS_SDK/SMSSDK.h>

@interface RegisterViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *RegionCode;

@end

@implementation RegisterViewController

- (IBAction)getVertificationCode:(id)sender {

//    [SMSSDK getVerificationCodeByMethod:0 phoneNumber:_phoneNum.text zone:@"86" customIdentifier:nil result:^(NSError *error) {
//        if (!error) {
//            PALog(@"获取验证码成功");
//        } else {
//            PALog(@"获取验证码失败");
//        }
//    }];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"getVertificationCodeSegue"]) {
        VertificationViewController *verVC = (VertificationViewController *)segue.destinationViewController;
        verVC.text = self.phoneNum.text;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"注册";
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.RegionCode.delegate = self;
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return NO;
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
