//
//  clearButton.m
//  Practice
//
//  Created by 赵麦 on 9/10/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "clearButton.h"

@implementation clearButton

-(void)setClearButton:(UITextField *)textField {
    UIButton *clearBtn = [textField valueForKey:@"_clearButton"];
    [clearBtn setImage:[UIImage imageNamed:@"取消按钮"] forState:UIControlStateNormal];
    [clearBtn setImage:[UIImage imageNamed:@"删除"] forState:UIControlStateHighlighted];
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
}


@end
