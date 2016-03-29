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
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Chess *chess = [[Chess alloc] init];
    [chess move];
    [chess eat];
    Chess *tot = [[Tot alloc] init];
    [tot move];
    [tot eat];
    Chess *vua = [[Vua alloc] init];
    [vua move];
    [vua eat];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
