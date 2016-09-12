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

- (IBAction)clearAccount:(id)sender {
    _accountTF.text = @"";
}
- (IBAction)clearPwd:(id)sender {
    _pwdTF.text = @"";
}
- (IBAction)Tap:(id)sender {
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    _accountTF.text = self.phoneNum;
    
    _accountTF.rightView = _accountClear;
    _accountTF.rightViewMode = UITextFieldViewModeWhileEditing;
    
    _pwdTF.rightView = _pwdClear;
    _pwdTF.rightViewMode = UITextFieldViewModeWhileEditing;

}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];

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

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
