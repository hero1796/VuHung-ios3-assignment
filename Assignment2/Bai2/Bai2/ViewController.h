//
//  ViewController.h
//  Bai2
//
//  Created by Hung Ga 123 on 3/31/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlertViewController.h"
@interface ViewController : UIViewController<AlertViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *ShowAlert;
- (IBAction)clickedShowAlert:(id)sender;

@property AlertViewController *alertViewController;
@end

