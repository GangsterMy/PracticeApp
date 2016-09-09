//
//  SetSecretVC.m
//  Practice
//
//  Created by 赵麦 on 9/2/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "SetSecretVC.h"

@interface SetSecretVC ()
@property (weak, nonatomic) IBOutlet UITextField *setPwd;
@property (weak, nonatomic) IBOutlet UITextField *confirmPwd;

@end

@implementation SetSecretVC
- (IBAction)Tap:(id)sender {
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

-(void)viewDidLoad {
    [super viewDidLoad];
    [self clearButton:_setPwd];
    [self clearButton:_confirmPwd];
}

-(void)clearButton:(UITextField *)textField {
    UIButton *clearBtn = [textField valueForKey:@"_clearButton"];
    [clearBtn setImage:[UIImage imageNamed:@"取消按钮"] forState:UIControlStateNormal];
    [clearBtn setImage:[UIImage imageNamed:@"删除"] forState:UIControlStateHighlighted];
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
}

#pragma mark UITextFieldDelegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
