//
//  ViewController.m
//  Bai2
//
//  Created by Hung Ga 123 on 3/31/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
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

- (IBAction)clickedShowAlert:(id)sender {
    self.alertViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"AlertViewController"];
     self.alertViewController.delegate =self; //Quan trong la phai dat no o day !!!
    [self.view addSubview:self.alertViewController.view];
}
-(void) clickedX {
    NSLog(@"X");
    [self.alertViewController.view removeFromSuperview];
}
-(void) clickedCancel {
    NSLog(@"Cancel");
    [self.alertViewController.view removeFromSuperview];
}
-(void) clickedOk {
    NSLog(@"OK");
    [self.alertViewController.view removeFromSuperview];
}
@end
