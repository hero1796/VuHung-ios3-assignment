//
//  ViewController.m
//  Bai1
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
    UIAlertView  *message = [[UIAlertView alloc] initWithTitle:@"FBI Warning" message:@"Virus" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Button1", @"Button 2", @"Button 3", nil];
    [message show];
    self.x =message;
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
        
    if(buttonIndex == 1) {
        NSLog(@"1");
        
    }
    if(buttonIndex == 2) {
        NSLog(@"2");
        
    }
    if(buttonIndex == 3) {
        NSLog(@"3");
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
