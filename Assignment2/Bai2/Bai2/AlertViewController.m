//
//  AlertViewController.m
//  Bai2
//
//  Created by Hung Ga 123 on 4/11/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.BackgroundView.layer.cornerRadius = 10;
    self.Cancel.layer.cornerRadius =10;
    self.OK.layer.cornerRadius =10;
    self.X.layer.cornerRadius = self.X.layer.frame.size.width/2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)clickedX:(id)sender {
    if(self.delegate != nil && [self.delegate respondsToSelector:@selector(clickedX)]) {
        [self.delegate clickedX];
    }
}

- (IBAction)clickedCancel:(id)sender {
    if(self.delegate != nil && [self.delegate respondsToSelector:@selector(clickedCancel)]) {
        [self.delegate clickedCancel];
    }
}

- (IBAction)clickedOk:(id)sender {
    if(self.delegate !=nil && [self.delegate respondsToSelector:@selector(clickedOk)]) {
        [self.delegate clickedOk];
    }
}
@end
