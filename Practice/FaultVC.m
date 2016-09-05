//
//  FaultTVC.m
//  Practice
//
//  Created by 赵麦 on 9/2/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "FaultVC.h"

@interface FaultVC ()
@property (weak, nonatomic) IBOutlet UIView *noneFault;
@property (weak, nonatomic) IBOutlet UIView *haveFault;
@property (weak, nonatomic) IBOutlet UILabel *faultNum;


@end

@implementation FaultVC

-(void)viewDidLoad {
    [super viewDidLoad];
    
    _haveFault.hidden = NO;
    _noneFault.hidden = YES;
    
    
//    _faultNum.layer.shadowColor = [UIColor colorWithRed:224.0 green:224.0 blue:224.0 alpha:0.6].CGColor;
//    _faultNum.layer.shadowOffset = CGSizeMake(4.0, 1.0);
//    _faultNum.layer.shadowOpacity = 1.0;
//    _faultNum.layer.shadowRadius = 10;
    
    
//    if (none) {
//        noneFault
//    } else {
//        haveFault
//    }
    
}

@end
