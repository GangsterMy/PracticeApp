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

@interface VertificationVC ()
@property (weak, nonatomic) IBOutlet UITextField *vertificationCode;

@end

@implementation VertificationVC
- (IBAction)getCodeBtn:(id)sender {
}
- (IBAction)sendCodeBtn:(id)sender {
        [SMSSDK commitVerificationCode:_vertificationCode.text phoneNumber:self.phoneNum zone:@"86" result:^(NSError *error) {
            if (!error) {
                PALog(@"验证成功");
                SetSecretVC *setVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SetSecretVC"];
                [self.navigationController pushViewController:setVC animated:YES];
                
            } else {
                PALog(@"错误信息:%@", error);
            }
        }];

}

@end
