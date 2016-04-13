//
//  AlertViewController.h
//  Bai2
//
//  Created by Hung Ga 123 on 4/11/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AlertViewDelegate<NSObject>

-(void) clickedX;
-(void) clickedCancel;
-(void) clickedOk;
@end
@interface AlertViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *BackgroundView;
@property (weak, nonatomic) IBOutlet UIButton *X;
@property (weak, nonatomic) IBOutlet UILabel *Warning;
@property (weak, nonatomic) IBOutlet UIButton *Cancel;
@property (weak, nonatomic) IBOutlet UIButton *OK;
- (IBAction)clickedX:(id)sender;
- (IBAction)clickedCancel:(id)sender;
- (IBAction)clickedOk:(id)sender;

@property id<AlertViewDelegate> delegate;
@end
