//
//  ViewController.m
//  8_2
//
//  Created by Hung Ga 123 on 4/25/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.userInteractionEnabled = YES;
    // Do any additional setup after loading the view, typically from a nib.
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(didPinch:)];
    [self.imageView addGestureRecognizer:pinchGesture];
    
    
    UIRotationGestureRecognizer *rotationGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(didRotate:)];
    [self.imageView addGestureRecognizer:rotationGesture];
}
-(void) didPinch: (UIPinchGestureRecognizer*) pinchGesture {
    NSLog(@"%f", pinchGesture.scale);
    pinchGesture.view.transform = CGAffineTransformScale(pinchGesture.view.transform, pinchGesture.scale, pinchGesture.scale);
    pinchGesture.scale  = 1;
    
}

-(void) didRotate: (UIRotationGestureRecognizer*) rotationGesture {
    NSLog(@"%f", rotationGesture.rotation);
    rotationGesture.view.transform =CGAffineTransformRotate(rotationGesture.view.transform, rotationGesture.rotation);
    rotationGesture.rotation = 0.0f;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
