//
//  ViewController.h
//  Bai4
//
//  Created by Hung Ga 123 on 4/9/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ForgotPassWordwController.h"
#import "RegisterViewController.h"
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@property (weak, nonatomic) IBOutlet UIButton *forgotPassWordButton;

@property ForgotPassWordwController *forgotPassWordViewControler;
@property RegisterViewController *registerViewControler;

- (IBAction)clickedForgotPassWord:(id)sender;
- (IBAction)clickedRegister:(id)sender;
- (IBAction)clickedLogin:(id)sender;


@end

