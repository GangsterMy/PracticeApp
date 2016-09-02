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


@end

@implementation FaultVC

-(void)viewDidLoad {
    [super viewDidLoad];
    
    _haveFault.hidden = NO;
    _noneFault.hidden = YES;
    
    
//    if (none) {
//        noneFault
//    } else {
//        haveFault
//    }
    
}

@end
