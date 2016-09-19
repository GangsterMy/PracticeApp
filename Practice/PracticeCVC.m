//
//  PracticeCVC.m
//  Practice
//
//  Created by 赵麦 on 9/12/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "PracticeCVC.h"

@interface PracticeCVC () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, copy) NSArray *iconDefaultArr;
@property (nonatomic, copy) NSArray *iconTrueArr;
@property (nonatomic, copy) NSArray *iconFalseArr;

@end

@implementation PracticeCVC


-(void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"practicecell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    
    
    return cell;
}

#pragma mark UITableViewDelegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"answercell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    _iconDefaultArr = [[NSArray alloc] initWithObjects:
                       [UIImage imageNamed:@"a-hui"],
                       [UIImage imageNamed:@"b-hui"],
                       [UIImage imageNamed:@"c-hui"],
                       [UIImage imageNamed:@"d-hui"], nil];
    
    cell.imageView.image = [_iconDefaultArr objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cell.imageView.image = [UIImage imageNamed:@"a-lv"];
            break;
        case 1:
            cell.imageView.image = [UIImage imageNamed:@"b-lv"];
            break;
        case 2:
            cell.imageView.image = [UIImage imageNamed:@"c-lv"];
            break;
        case 3:
            cell.imageView.image = [UIImage imageNamed:@"d-lv"];
            break;
            
            
        default:
            break;
    }
    
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cell.imageView.image = [UIImage imageNamed:@"a-hui"];
            break;
        case 1:
            cell.imageView.image = [UIImage imageNamed:@"b-hui"];
            break;
        case 2:
            cell.imageView.image = [UIImage imageNamed:@"c-hui"];
            break;
        case 3:
            cell.imageView.image = [UIImage imageNamed:@"d-hui"];
            break;
            
            
        default:
            break;
    }
    
}


@end
