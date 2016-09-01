//
//  iconTextField.m
//  Practice
//
//  Created by 赵麦 on 8/31/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "iconTextField.h"

@interface iconTextField ()

@end

@implementation iconTextField

// Placeholder position
- (CGRect)textRectForBounds:(CGRect)bounds {
    CGRect rect = [super textRectForBounds:bounds];
    UIEdgeInsets insets = UIEdgeInsetsMake(10, 40, 10, 5);
    
    return UIEdgeInsetsInsetRect(rect, insets);
}

// Text position
- (CGRect)editingRectForBounds:(CGRect)bounds {
    CGRect rect = [super editingRectForBounds:bounds];
    UIEdgeInsets insets = UIEdgeInsetsMake(10, 40, 10, 5);
    
    return UIEdgeInsetsInsetRect(rect, insets);
}

-(CGRect)rightViewRectForBounds:(CGRect)bounds {
    CGRect rect = [super rightViewRectForBounds:bounds];
    return CGRectOffset(rect, -10, 0);
}


//// Clear button position
//- (CGRect)clearButtonRectForBounds:(CGRect)bounds {
//    CGRect rect = [super clearButtonRectForBounds:bounds];
//
//    return CGRectOffset(rect, -5, 0);
//}

//// placeholder position
//- (CGRect)textRectForBounds:(CGRect)bounds {
//    [super textRectForBounds:bounds];
//    return CGRectInset(bounds, 47, 0);
//}
//
//// text position
//- (CGRect)editingRectForBounds:(CGRect)bounds {
//    [super editingRectForBounds:bounds];
//    return CGRectInset(bounds, 47, 0);
//}


@end
