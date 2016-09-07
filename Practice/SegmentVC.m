//
//  SegmentVC.m
//  Practice
//
//  Created by 赵麦 on 9/2/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "SegmentVC.h"

@interface SegmentVC ()
@property (weak, nonatomic) IBOutlet UIView *FaultView;
@property (weak, nonatomic) IBOutlet UIView *UnitView;


@end

@implementation SegmentVC
- (IBAction)safariBtn:(id)sender {
    //www.gpst.cn
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.gpst.cn"]];
}
- (IBAction)Segments:(id)sender {
    UISegmentedControl *segmentedControl = sender;
    switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            self.UnitView.hidden = NO;
            break;
        case 1:
            self.UnitView.hidden = YES;
            break;
        default:
            break;
    }
}

-(void)viewDidLoad {
    [super viewDidLoad];
}

@end
