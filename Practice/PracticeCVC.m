//
//  PracticeCVC.m
//  Practice
//
//  Created by 赵麦 on 9/12/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "PracticeCVC.h"
#import "PracticeVC.h"

@implementation PracticeCVC

-(void)viewDidLoad {
    [super viewDidLoad];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"practicecell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
//    if (!cell) {
//        cell = [[UICollectionViewCell alloc] init];
//    }
    
    return cell;
}

@end
