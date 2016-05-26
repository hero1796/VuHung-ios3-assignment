//
//  ViewController.m
//  Slot15
//
//  Created by TaHoangMinh on 5/15/16.
//  Copyright © 2016 Techkid. All rights reserved.
//

#import "ViewController.h"
#import "APIClient.h"
#import "UIImageView+WebCache.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[APIClient sharedClient] getTermCondition:@{@"id": @"xx"} success:^(id response, NSError *error) {
        
    }];
    [_imgView sd_setImageWithURL:@"https://s3.amazonaws.com/StartupStockPhotos/uploads/20160503/3.jpg"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
