//
//  ForgotPassWordwController.m
//  Bai4
//
//  Created by Hung Ga 123 on 4/9/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ForgotPassWordwController.h"

@interface ForgotPassWordwController ()

@end

@implementation ForgotPassWordwController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"ForgotPassWord";
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

- (IBAction)clickedBack:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
