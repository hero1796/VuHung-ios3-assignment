//
//  ViewController.m
//  8_1
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
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan1:)];
    panGesture.minimumNumberOfTouches = 1;
    panGesture.maximumNumberOfTouches = 1;
    [self.view1 addGestureRecognizer:panGesture];
}
-(void) pan1: (UIPanGestureRecognizer*) panGesture {
    CGPoint translation = [panGesture translationInView:self.view];
    panGesture.view.center = CGPointMake(panGesture.view.center.x + translation.x,
                                         panGesture.view.center.y + translation.y);
    [panGesture setTranslation:CGPointMake(0, 0) inView:self.view];
    self.view1.frame = CGRectMake(self.view1.frame.origin.x, 0, self.view1.frame.size.width, self.view1.frame.size.height);
    if(self.view1.frame.origin.x < -270) {
        self.view1.frame = CGRectMake(-270, 0, self.view1.frame.size.width, self.view1.frame.size.height);
    } else if(self.view1.frame.origin.x > 0) {
         self.view1.frame = CGRectMake(0, 0, self.view1.frame.size.width, self.view1.frame.size.height);
    }
    self.view2.frame = CGRectMake(self.view1.frame.origin.x + self.view1.frame.size.width, 0, self.view2.frame.size.width, self.view2.frame.size.height);
    if (panGesture.state == UIGestureRecognizerStateEnded) {
        
    [UIView animateWithDuration:0.5f animations:^{
        if(self.view2.frame.origin.x >= 160) {
            self.view1.frame = CGRectMake(0, 0, self.view1.frame.size.width, self.view1.frame.size.height);
        } else if(self.view2.frame.origin.x < 160) {
            self.view1.frame = CGRectMake(-270, 0, self.view1.frame.size.width, self.view1.frame.size.height);
        }
        self.view2.frame = CGRectMake(self.view1.frame.origin.x + self.view1.frame.size.width, 0, self.view2.frame.size.width, self.view2.frame.size.height);
    }];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//SWRevealController
@end
