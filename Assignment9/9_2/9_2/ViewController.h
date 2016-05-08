//
//  ViewController.h
//  9_2
//
//  Created by Hung Ga 123 on 5/3/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIButton *forgotPasswordButton;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
- (IBAction)clickedForgotPassword:(id)sender;
- (IBAction)clickedLogin:(id)sender;

@end

