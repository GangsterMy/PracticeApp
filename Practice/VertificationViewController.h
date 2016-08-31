//
//  VertificationViewController.h
//  Practice
//
//  Created by 赵麦 on 8/28/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"

@interface VertificationViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *vertificationCode;
@property (weak, nonatomic) IBOutlet UILabel *phoneNum;
@property (nonatomic, copy) NSString *text;

@end
