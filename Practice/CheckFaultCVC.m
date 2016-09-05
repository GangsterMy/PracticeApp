//
//  CheckFaultCVC.m
//  Practice
//
//  Created by 赵麦 on 9/5/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "CheckFaultCVC.h"

@implementation CheckFaultCVC

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"错题本";
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"faultcell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    if (!cell) {
        cell = [[UICollectionViewCell alloc] init];
    }
    
    return cell;
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfRowsInSection:(NSInteger)section {
    return 20;
}


@end
