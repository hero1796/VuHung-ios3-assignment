//
//  ViewController.m
//  Bai3
//
//  Created by Hung Ga 123 on 4/9/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerB.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //self.title = @"My Back";
    [self.navigationController.navigationBar setBarTintColor:[UIColor yellowColor]];
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickA:(id)sender {
    self.vcB = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"B"];
     self.vcB1 = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"B"];
     self.vcB2 = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"B"];
   // [self.view addSubview:self.vcB.view];
    
    
   //    [self presentViewController:self.vcB animated:YES completion:^ {
   //
   //    }];
    
    [self.navigationController pushViewController:self.vcB animated:YES];
    [self.navigationController pushViewController:self.vcB1 animated:YES];
    [self.navigationController pushViewController:self.vcB2 animated:YES];

}

@end
