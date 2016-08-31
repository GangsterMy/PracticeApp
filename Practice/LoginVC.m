//
//  LoginVC.m
//  Practice
//
//  Created by 赵麦 on 8/31/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "LoginVC.h"
#import "iconTextField.h"

@interface LoginVC ()
@property (weak, nonatomic) IBOutlet iconTextField *accountTF;
@property (weak, nonatomic) IBOutlet iconTextField *pwdTF;
@property (weak, nonatomic) IBOutlet UIButton *accountClear;
@property (weak, nonatomic) IBOutlet UIButton *pwdClear;


@end

@implementation LoginVC


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _accountTF.rightView = _accountClear;
    [_accountClear addTarget:self action:@selector(clearAccountTF) forControlEvents:UIControlEventTouchUpInside];
    _accountTF.rightViewMode = UITextFieldViewModeWhileEditing;
    
    _pwdTF.rightView = _pwdClear;
    [_pwdTF addTarget:self action:@selector(clearPwdTF) forControlEvents:UIControlEventTouchUpInside];
    _pwdTF.rightViewMode = UITextFieldViewModeWhileEditing;
}

-(void)clearAccountTF {
    _accountTF.text = @"";
}

-(void)clearPwdTF {
    _pwdTF.text = @"";
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// placeholder position
- (CGRect)textRectForBounds:(CGRect)bounds {
    return CGRectInset(bounds, 50, 10);
}

// text position
- (CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectInset(bounds, 50, 10);
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
