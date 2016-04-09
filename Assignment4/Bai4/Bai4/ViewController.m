//
//  ViewController.m
//  Bai4
//
//  Created by Hung Ga 123 on 4/9/16.
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedForgotPassWord:(id)sender {
    self.forgotPassWordViewControler = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle] ] instantiateViewControllerWithIdentifier:@"ForgotPassWord"];
    [self.navigationController pushViewController:self.forgotPassWordViewControler animated:YES];
}

- (IBAction)clickedRegister:(id)sender {
    self.registerViewControler = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle] ] instantiateViewControllerWithIdentifier:@"Register"];
    [self.navigationController pushViewController:self.registerViewControler animated:YES];
}

- (IBAction)clickedLogin:(id)sender {
}
@end
