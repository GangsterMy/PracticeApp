//
//  RegisterVC.m
//  Practice
//
//  Created by 赵麦 on 9/1/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "RegisterVC.h"
#import "LoginVC.h"
#import "VertificationVC.h"
#import <SMS_SDK/SMSSDK.h>

@interface RegisterVC () <UITextFieldDelegate>
//@property (weak, nonatomic) IBOutlet UITextField *phoneNum;

@end

@implementation RegisterVC
- (IBAction)regBtn:(id)sender {
    [self showlAlert];
}

-(void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
}

- (void)showlAlert {
    NSString *title = @"请确认手机号码";
    NSString *message = [NSString stringWithFormat:@"我们将发送短信验证至您的手机:%@", _phoneNum.text];
    NSString *cancelButtonTitle = @"取消";
    NSString *otherButtonTitle = @"好";
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    // Create the actions.
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:nil];
    
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        [SMSSDK getVerificationCodeByMethod:0 phoneNumber:_phoneNum.text zone:@"86" customIdentifier:nil result:^(NSError *error) {
            if (!error) {
                PALog(@"获取验证码成功");
                VertificationVC *vertVC = [self.storyboard instantiateViewControllerWithIdentifier:@"VertificationVC"];
                [self.navigationController pushViewController:vertVC animated:YES];
                vertVC.phoneNum = _phoneNum.text;
            } else {
                PALog(@"获取验证码失败");
            }
        }];
    }];
    
    [alertController addAction:cancelAction];
    [alertController addAction:otherAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end