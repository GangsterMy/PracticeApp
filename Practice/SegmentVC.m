//
//  SegmentVC.m
//  Practice
//
//  Created by 赵麦 on 9/2/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "SegmentVC.h"
#import "SetSecretVC.h"
#import "LoginVC.h"

@interface SegmentVC ()
@property (weak, nonatomic) IBOutlet UIView *FaultView;
@property (weak, nonatomic) IBOutlet UIView *UnitView;
@property (weak, nonatomic) IBOutlet UIView *DropDownMenu;
@property (nonatomic, strong) NSArray *data;

@end

@implementation SegmentVC
- (IBAction)resetSecret:(id)sender {
    SetSecretVC *setVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SetSecretVC"];
    [self.navigationController pushViewController:setVC animated:YES];
}
- (IBAction)resignAccount:(id)sender {
    LoginVC *logVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginVC"];
    [self.navigationController pushViewController:logVC animated:YES];
}
- (IBAction)settingBtn:(id)sender {
    _DropDownMenu.hidden = NO;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideDropDwonMenu)];
    [self.view addGestureRecognizer:tapGesture];
}

-(void)hideDropDwonMenu {
     _DropDownMenu.hidden = YES;
    for (UITapGestureRecognizer *tapGesture in self.view.gestureRecognizers) {
        [self.view removeGestureRecognizer:tapGesture];
    }
}

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

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    _DropDownMenu.hidden = YES;
    //    [self.navigationController setNavigationBarHidden:NO animated:YES];
    if ( self.navigationController.childViewControllers.count > 1 ) {
        [self.navigationController setNavigationBarHidden:NO animated:YES];
    }
}

-(void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
//    NSBundle *bundle = [NSBundle mainBundle];
//    NSString *filePath = [bundle pathForResource:@"Data" ofType:@"plist"];
//    self.data = [NSArray arrayWithContentsOfFile:filePath];
//    PALog(@"%@", self.data);
    
}

@end
