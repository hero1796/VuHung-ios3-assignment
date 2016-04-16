//
//  ViewController.m
//  6_2
//
//  Created by Hung Ga 123 on 4/15/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"
#import "ChessCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for(UIView *cellView in self.chessBoardView.subviews) {
        if([cellView isKindOfClass:[ChessCell class]]) {
            [(UIButton*) cellView addTarget:self action:@selector(clickedCell:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
    // Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)clickedCell:(UIButton*)button {
    [UIView animateWithDuration:1.0f delay:0.0f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.imageView.center = CGPointMake(button.frame.origin.x + 20, button.frame.origin.y + 20);
    } completion:^(BOOL finished) {
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
