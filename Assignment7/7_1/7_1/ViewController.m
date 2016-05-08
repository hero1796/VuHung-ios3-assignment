//
//  ViewController.m
//  7_1
//
//  Created by Hung Ga 123 on 4/22/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    UITouch *atouch = [touches anyObject];
    CGPoint location = [atouch locationInView:self.view];
    self.takizawa.center = CGPointMake(location.x, location.y);
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    UITouch *atouch = [touches anyObject];
    CGPoint location = [atouch locationInView:self.view];
//    
//    if(!CGRectContainsPoint(self.takizawa.frame, location)) {
//        return;
//    }
    
    CGPoint previousLocation = [atouch previousLocationInView:self.view];
    float deltaX = location.x - previousLocation.x;
    float deltaY = location.y - previousLocation.y;
    CGRect myFrame = self.takizawa.frame;
    myFrame.origin.x +=deltaX;
    myFrame.origin.y +=deltaY;
    [self.takizawa setFrame:myFrame];
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
