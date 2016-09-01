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

@interface RegisterVC () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *phoneNum;

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
    NSString *message = @"我们将发送短信验证码至号码:"; //?
    NSString *cancelButtonTitle = @"取消";
    NSString *otherButtonTitle = @"好";
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    // Create the actions.
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:nil];
    
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"The \"Okay/Cancel\" alert's other action occured.");
        //?
    }];
    
    // Add the actions.
    [alertController addAction:cancelAction];
    [alertController addAction:otherAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"getVertificationCodeSegue"]) {
        VertificationVC *vertVC = (VertificationVC *)segue.destinationViewController;
//        vertVC.text = self.phoneNum.text;
    }
}

@end
