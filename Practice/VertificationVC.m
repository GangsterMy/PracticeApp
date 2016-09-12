//
//  VertificationVC.m
//  Practice
//
//  Created by 赵麦 on 9/1/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "VertificationVC.h"
#import <SMS_SDK/SMSSDK.h>
#import "SetSecretVC.h"
#import "RegisterVC.h"
#import "LoginVC.h"

@interface VertificationVC ()
@property (weak, nonatomic) IBOutlet UITextField *vertificationCode;

@end

@implementation VertificationVC
- (IBAction)getCodeBtn:(id)sender {
    [self showAlert];
}
- (IBAction)sendCodeBtn:(id)sender {
//    [SMSSDK commitVerificationCode:_vertificationCode.text phoneNumber:self.phoneNum zone:@"86" result:^(NSError *error) {
//        if (!error) {
//            PALog(@"验证成功");
//            SetSecretVC *setVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SetSecretVC"];
//            [self.navigationController pushViewController:setVC animated:YES];
    LoginVC *logVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginVC"];
    logVC.phoneNum = self.phoneNum;
    [self.navigationController pushViewController:logVC animated:YES];
//
//        } else {
//            PALog(@"错误信息:%@", error);
//        }
//    }];
}

-(void)viewDidLoad {
    [super viewDidLoad];
}

-(void)showAlert {
    _vertificationCode.text = @"";
    
    NSString *title = @"已发送";
    NSString *message = @"验证码已重新发送!";
    NSString *okBtn = @"好";
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:okBtn style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        
//        [SMSSDK getVerificationCodeByMethod:0 phoneNumber:_phoneNum zone:@"86" customIdentifier:nil result:^(NSError *error) {
//            if (!error) {
//                PALog(@"再次获取验证码成功");
                SetSecretVC *setVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SetSecretVC"];
                [self.navigationController pushViewController:setVC animated:YES];
//            } else {
//                PALog(@"再次获取验证码失败");
//            }
//        }];
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
    
}


@end
