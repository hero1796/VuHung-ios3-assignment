//
//  ViewController.m
//  TH2_B
//
//  Created by Hung Ga 123 on 4/11/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSInteger x ;
@end

@implementation ViewController
-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 8*8;
}
-(UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell;
    if(self.x %8 == 0 || self.x %8 ==2 ||self.x %8 ==4 || self.x %8 ==6 || self.x %8 ==8) {
        cell= [collectionView dequeueReusableCellWithReuseIdentifier:@"whileCell" forIndexPath:indexPath];
    } else {
        cell= [collectionView dequeueReusableCellWithReuseIdentifier:@"blackCell" forIndexPath:indexPath];
    }
    self.x++;
    if(self.x ==8) {
        self.x ++;
    }
    if (self.x == 17) {
        self.x =0;
    }
    
        return cell;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.collectionView.delegate =self;
    self.collectionView.dataSource =self;
    self.x =0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
