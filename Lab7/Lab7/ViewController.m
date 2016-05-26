//
//  ViewController.m
//  Lab6
//
//  Created by Hung Ga 123 on 5/14/16.
//  Copyright © 2016 Hung Ga 123. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgV;
@property (weak, nonatomic) IBOutlet UIButton *changeColor;
@property  ViewController2 *vcl2;
@property   ViewController3 *vcl3;
@property ViewController4 *vcl4;
@end

@implementation ViewController
- (IBAction)clicked:(id)sender {
    [[UINavigationBar appearance] setBarTintColor:[UIColor greenColor]];
    [[UIToolbar appearance] setBarTintColor:[UIColor greenColor]];
    [[UISearchBar appearance] setBarTintColor:[UIColor greenColor]];
    [[UITabBar appearance] setBarTintColor:[UIColor greenColor]];
    [AppDelegate refreshView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
#pragma mark - Requiment 1
    
#pragma mark- Requiment 2
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    _vcl2 = [sb instantiateViewControllerWithIdentifier:@"2"];
    _vcl3 = [sb instantiateViewControllerWithIdentifier:@"3"];
    _vcl4 = [sb instantiateViewControllerWithIdentifier:@"4"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t) (2 *NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

        [self presentViewController:_vcl2 animated:YES completion:nil];
    });
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t) (4 *NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
       int i =rand() % 3;
        if(i ==0 && [self topMostController] != _vcl2) {
            [[self topMostController] presentViewController:_vcl2 animated:YES completion:nil];
        }
        if(i ==1 && [self topMostController] != _vcl3) {
            [[self topMostController] presentViewController:_vcl3 animated:YES completion:nil];
        }
        if(i ==2 && [self topMostController] != _vcl4) {
            [[self topMostController] presentViewController:_vcl4 animated:YES completion:nil];
        }
    });
#pragma mark- Requiment 3
    
}
- (UIViewController*) topMostController
{
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    
    return topController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
