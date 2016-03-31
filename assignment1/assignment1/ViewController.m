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
    self.lbl1 = [[UILabel alloc] init];

    _lbl1.frame = CGRectMake(110, 30, 200, 50);
    _lbl1.backgroundColor=[UIColor blueColor];
    _lbl1.textColor = [UIColor blackColor];
    _lbl1.userInteractionEnabled=YES;
    _lbl1.text= @"Assignment 1";
    _lbl1.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:_lbl1];
    
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
    
    UIAlertView *notice = [[UIAlertView alloc] initWithTitle:@"Notify" message:@"Hello !" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    notice.delegate = self;
    [notice show];
  }

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    _lbl1.text =@"Da hoan thanh !";
    
}

-(void) X {
    NSLog(@"An duoc roi");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
