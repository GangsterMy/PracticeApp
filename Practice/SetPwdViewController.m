//
//  SetPwdViewController.m
//  Practice
//
//  Created by 赵麦 on 8/29/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "SetPwdViewController.h"

@interface SetPwdViewController ()
@property (weak, nonatomic) IBOutlet UITextField *setPwd;
@property (weak, nonatomic) IBOutlet UITextField *confirmPwd;

@end

@implementation SetPwdViewController
- (IBAction)FinishReg:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"设置密码";
    
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
