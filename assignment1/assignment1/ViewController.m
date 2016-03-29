//
//  ViewController.m
//  Assignment1
//
//  Created by Hung Ga 123 on 3/28/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "ViewController.h"
#import "Chess.h"
#import "Tot.h"
#import "Vua.h"
#import "Alert.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Task 1
    Chess *chess = [[Chess alloc] init];
    [chess move];
    [chess eat];
    Chess *tot = [[Tot alloc] init];
    [tot move];
    [tot eat];
    Chess *vua = [[Vua alloc] init];
    [vua move];
    [vua eat];
    
    //Task 2
    Alert *alert = [[Alert alloc] init];
    alert.instance = self;
  }

-(void) X {
    NSLog(@"An duoc roi");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
