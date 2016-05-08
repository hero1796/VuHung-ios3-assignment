//
//  ViewController.m
//  8_3
//
//  Created by Hung Ga 123 on 4/26/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *swipeDownGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeDown:)];
    swipeDownGesture.direction = UISwipeGestureRecognizerDirectionDown;
    [self.subView addGestureRecognizer:swipeDownGesture];
    
    UISwipeGestureRecognizer *swipeUpGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeUp:)];
    swipeUpGesture.direction = UISwipeGestureRecognizerDirectionUp;
    [self.subView addGestureRecognizer:swipeUpGesture];
    
    UISwipeGestureRecognizer *swipeLeftGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeLeft:)];
    swipeLeftGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.subView addGestureRecognizer:swipeLeftGesture];
    
    UISwipeGestureRecognizer *swipeRightGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeRight:)];
    swipeRightGesture.direction = UISwipeGestureRecognizerDirectionRight;
    [self.subView addGestureRecognizer:swipeRightGesture];
    
}
-(void) didSwipeDown: (UISwipeGestureRecognizer*) swipeGesture {
    NSLog(@"Down");
}
-(void) didSwipeUp: (UISwipeGestureRecognizer*) swipeGesture {
    NSLog(@"Up");
}
-(void) didSwipeLeft: (UISwipeGestureRecognizer*) swipeGesture {
    NSLog(@"Left");
}
-(void) didSwipeRight: (UISwipeGestureRecognizer*) swipeGesture {
    NSLog(@"Right");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
