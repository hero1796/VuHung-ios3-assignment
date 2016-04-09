//
//  AppDelegate.h
//  Bai3
//
//  Created by Hung Ga 123 on 4/9/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ViewControllerB.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property ViewController *viewControlerA;
@property ViewControllerB *viewControlerB;
@property UITabBarController *tabBarControler;
@end

