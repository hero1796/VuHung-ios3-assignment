//
//  ViewController.m
//  12_2
//
//  Created by Hung Ga 123 on 5/20/16.
//  Copyright © 2016 HungVu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *clock;
@property (weak, nonatomic) IBOutlet UIImageView *hours;
@property (weak, nonatomic) IBOutlet UIImageView *secs;
@property (weak, nonatomic) IBOutlet UIImageView *minutes;
@property float rotationSecs;
@property float rotationMinutes;
@property float rotationHours;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSMethodSignature *signature  = [self methodSignatureForSelector:@selector(update)];
//    NSInvocation      *invocation = [NSInvocation invocationWithMethodSignature:signature];
//    [invocation setTarget:self];
//    [invocation setSelector:@selector(update)];
//    [NSTimer scheduledTimerWithTimeInterval:1 invocation:invocation repeats:YES];
//    [self update];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while(true) {
            [NSThread sleepForTimeInterval:1.0f];
            _rotationSecs += M_PI/30;
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"Secs");
                _secs.transform = CGAffineTransformMakeRotation(_rotationSecs);
            });
        }
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while(true) {
            [NSThread sleepForTimeInterval:1.0f];
            _rotationMinutes += M_PI/1800;
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"Minutes");
                _minutes.transform = CGAffineTransformMakeRotation(_rotationMinutes);
            });
        }
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while(true) {
            [NSThread sleepForTimeInterval:1.0f];
            _rotationHours += M_PI/21600;
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"Hours");
                _hours.transform = CGAffineTransformMakeRotation(_rotationHours);
            });
        }
    });

    
}
//-(void) update{
//    NSInteger x;
//    x = [_lbl.text intValue];
//    x++;
//    _lbl.text = [NSString stringWithFormat:@"%ld", x];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
