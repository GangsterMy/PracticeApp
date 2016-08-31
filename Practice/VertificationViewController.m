//
//  VertificationViewController.m
//  Practice
//
//  Created by 赵麦 on 8/28/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "VertificationViewController.h"
#import "RegisterViewController.h"
#import <SMS_SDK/SMSSDK.h>



@interface VertificationViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *Code;

@end

@implementation VertificationViewController

- (IBAction)sendVertificationCode:(id)sender {
    
//    [SMSSDK commitVerificationCode:_vertificationCode.text phoneNumber:self.text zone:@"86" result:^(NSError *error) {
//        if (!error) {
//            PALog(@"验证成功");
//        } else {
//            PALog(@"错误信息:%@", error);
//        }
//    }];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"注册";
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];

    _phoneNum.text = self.text;
    self.Code.delegate = self;
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
