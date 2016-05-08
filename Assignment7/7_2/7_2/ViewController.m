//
//  ViewController.m
//  7_2
//
//  Created by Hung Ga 123 on 4/23/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(orientationChanged:)
     name:UIDeviceOrientationDidChangeNotification
     object:nil];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)orientationChanged: (NSNotification*) notification {
    UIDevice *device = notification.object;
    switch(device.orientation)
    {
        case UIDeviceOrientationPortrait:
            self.lable.text = @"Vertical";
            break;
        case UIDeviceOrientationPortraitUpsideDown:
             self.lable.text = @"Vertical";
            break;
        case UIDeviceOrientationLandscapeLeft:
            self.lable.text = @"Horizontal";
            break;
        case UIDeviceOrientationLandscapeRight:
            self.lable.text = @"Horizontal";
            break;
        default:
            break;
    };}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
