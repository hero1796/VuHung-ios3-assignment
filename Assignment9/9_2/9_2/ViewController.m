//
//  ViewController.m
//  9_2
//
//  Created by Hung Ga 123 on 5/3/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSUserDefaults *userDefaults;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.userDefaults = [NSUserDefaults standardUserDefaults];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedForgotPassword:(id)sender {
    NSLog(@"%@",[self.userDefaults objectForKey:@"username"]);
    NSLog(@"%@",[self.userDefaults objectForKey:@"password"]);
}

- (IBAction)clickedLogin:(id)sender {
    [self.userDefaults setObject:self.usernameField.text forKey:@"username"];
    [self.userDefaults setObject:self.passwordField.text forKey:@"password"];
    [self.userDefaults synchronize];
}
@end
