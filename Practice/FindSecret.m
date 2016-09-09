//
//  FindSecret.m
//  Practice
//
//  Created by 赵麦 on 9/2/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "FindSecret.h"
#import "LoginVC.h"
#import <SMS_SDK/SMSSDK.h>
#import "SetSecretVC.h"

@interface FindSecret ()
@property (weak, nonatomic) IBOutlet UITextField *phoneNum;
@property (weak, nonatomic) IBOutlet UITextField *vertificationCode;
@end

@implementation FindSecret
- (IBAction)getCode:(id)sender {
    [self showAlert];
}
- (IBAction)sendCode:(id)sender {
    [SMSSDK commitVerificationCode:_vertificationCode.text phoneNumber:_phoneNum.text zone:@"86" result:^(NSError *error) {
        if (!error) {
            PALog(@"验证成功");
            [self showCodeAlert];
        } else {
            PALog(@"错误信息:%@", error);
        }
    }];

}
- (IBAction)Tap:(id)sender {
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //    [self.navigationController setNavigationBarHidden:NO animated:YES];
    if ( self.navigationController.childViewControllers.count > 1 ) {
        [self.navigationController setNavigationBarHidden:NO animated:YES];
    }
}

-(void)viewDidLoad {
    [super viewDidLoad];
    [self clearButton:_phoneNum];
}

-(void)showAlert {
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
            } else {
                PALog(@"获取验证码失败");
            }
        }];
    }];
    
    [alertController addAction:cancelAction];
    [alertController addAction:otherAction];
    [self presentViewController:alertController animated:YES completion:nil];
    
}

-(void)showCodeAlert {
    NSString *title = @"验证成功";
    NSString *message = @"请设置新的密码!";
    NSString *okBtn = @"好";
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    // Create the actions.
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:okBtn style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        LoginVC *logVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginVC"];
        logVC.phoneNum = _phoneNum.text;
        SetSecretVC *setVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SetSecretVC"];
        [self.navigationController pushViewController:setVC animated:YES];
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
    
}

-(void)clearButton:(UITextField *)textField {
    UIButton *clearBtn = [textField valueForKey:@"_clearButton"];
    [clearBtn setImage:[UIImage imageNamed:@"取消按钮"] forState:UIControlStateNormal];
    [clearBtn setImage:[UIImage imageNamed:@"删除"] forState:UIControlStateHighlighted];
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
}
#pragma mark - UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
