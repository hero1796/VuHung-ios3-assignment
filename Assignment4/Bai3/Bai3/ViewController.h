//
//  ViewController.h
//  Bai3
//
//  Created by Hung Ga 123 on 4/9/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerB.h"
@interface ViewController : UIViewController<UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btnA;

@property ViewControllerB *vcB;
@property ViewControllerB *vcB1;
@property ViewControllerB *vcB2;

- (IBAction)clickA:(id)sender;


@end

