//
//  FindSecret.m
//  Practice
//
//  Created by 赵麦 on 9/2/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "FindSecret.h"

@interface FindSecret ()
@property (weak, nonatomic) IBOutlet UITextField *phoneNum;
@property (weak, nonatomic) IBOutlet UITextField *vertificationCode;


@end

@implementation FindSecret
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
    UIButton *button = [_phoneNum valueForKey:@"_clearButton"];
    [button setImage:[UIImage imageNamed:@"取消按钮"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"删除"] forState:UIControlStateHighlighted];
    _phoneNum.clearButtonMode = UITextFieldViewModeWhileEditing;
}

//-(void)clearBtn:(UIButton *)button {
//    UIButton *button = [_phoneNum valueForKey:@"_clearButton"];
//    [button setImage:[UIImage imageNamed:@"取消按钮"] forState:UIControlStateNormal];
//    [button setImage:[UIImage imageNamed:@"删除"] forState:UIControlStateHighlighted];
//    _phoneNum.clearButtonMode = UITextFieldViewModeWhileEditing;
//}

#pragma mark - UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
