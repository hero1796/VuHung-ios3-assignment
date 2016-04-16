//
//  ViewController.m
//  6_4
//
//  Created by Hung Ga 123 on 4/14/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"
@interface ViewController ()
@property float rotation;
@property int x;
@property int y;
@property int count1;
@property int count2;
@property int count3;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.rotation =0.0f;
    self.x = 1;
    self.count1 = 0;
    self.count2 = 0;
    self.count3 = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) rotate1 {
    if(self.x ==1 && self.y ==1) {
    [UIView animateWithDuration:0.0f delay:0.0f options:UIViewAnimationOptionCurveLinear animations:^{
        self.imageView.transform = CGAffineTransformMakeRotation(self.rotation += M_PI / 35);
        
    } completion:^(BOOL finished) {
        [self rotate1];
    }];
    }
}

-(void) rotate2 {
    if(self.x ==1 && self.y ==2) {
    [UIView animateWithDuration:0.0f delay:0.0f options:UIViewAnimationOptionCurveLinear animations:^{
        self.imageView.transform = CGAffineTransformMakeRotation(self.rotation += M_PI / 25);
        
    } completion:^(BOOL finished) {
        [self rotate2];
    }];
}
}

-(void) rotate3 {
    if(self.x ==1 && self.y ==3) {
    [UIView animateWithDuration:0.0f delay:0.0f options:UIViewAnimationOptionCurveLinear animations:^{
        self.imageView.transform = CGAffineTransformMakeRotation(self.rotation += M_PI / 15);
        
    } completion:^(BOOL finished) {
        [self rotate3];
    
    }];
}
}

- (IBAction)clickedTurnOff:(id)sender {
    self.x = 0;
    self.count1=0;
    self.count2=0;
    self.count3=0;
}


- (IBAction)clicked3:(id)sender {
    self.x =1;
    self.y =3;
    self.count1=0;
    self.count2=0;
    self.count3 ++;
    if(self.count3 == 1) {
        [self rotate3];
    }
}


- (IBAction)clicked2:(id)sender {
    self.x =1;
    self.y =2;
    self.count1=0;
    self.count3=0;
    self.count2++;
    if(self.count2 ==1) {
        [self rotate2];
    }
}

- (IBAction)clicked1:(id)sender {
    self.x =1;
    self.y=1;
    self.count2=0;
    self.count3=0;
    self.count1++;
    if (self.count1 ==1) {
        [self rotate1];
    }
}
@end
