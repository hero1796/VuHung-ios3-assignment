//
//  ViewController.m
//  5_3
//
//  Created by Hung Ga 123 on 4/13/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGAffineTransform transform = CGAffineTransformMakeRotation(-M_PI_2);
    self.slider.transform = transform;
    
    
    self.imageView.image = [UIImage imageNamed:@"1bluefeet.jpg"];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.imageView.layer.cornerRadius = self.imageView.frame.size.height/2;
    self.imageView.layer.borderWidth = 5.0f;
    self.imageView.layer.borderColor = [UIColor yellowColor].CGColor;
    self.imageView.layer.masksToBounds = YES;
    
    
    CAGradientLayer *buttonGradient = [CAGradientLayer layer];
    buttonGradient.frame = self.button.bounds;
    buttonGradient.colors = [NSArray arrayWithObjects:
                             (id) [[UIColor colorWithRed:48.0f / 255.0f green:0.0f /255.0f blue:159.0f / 255.0f alpha:1.0f] CGColor]
                             ,(id)[[UIColor colorWithRed:68.0f / 255.0f green:100.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f] CGColor]
                             , nil];
    [self.button.layer insertSublayer:buttonGradient atIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
