//
//  PracticeVC.m
//  Practice
//
//  Created by 赵麦 on 9/5/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "PracticeVC.h"

@interface PracticeVC ()
@property (weak, nonatomic) IBOutlet UILabel *QuestionLb;
@property (weak, nonatomic) IBOutlet UITableView *answerTV;
@property (weak, nonatomic) IBOutlet UITableViewCell *answerCell;

@end

@implementation PracticeVC

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"第一单元";
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"answercell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    
    }
    
    return cell;
}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (UITableViewAutomaticDimension > 44) {
//        return 44;
//    }
//    return UITableViewAutomaticDimension;
//}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

@end
