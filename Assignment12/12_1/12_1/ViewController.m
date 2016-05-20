//
//  ViewController.m
//  12_1
//
//  Created by Hung Ga 123 on 5/20/16.
//  Copyright © 2016 HungVu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property NSMutableArray *global_stack;
@property float rotation;
@end

@implementation ViewController

- (void)viewDidLoad {
[super viewDidLoad];
 
//    NSLog(@"1\n");
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t) (2 *NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"2");
//    });

//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        while (true) {
//            [NSThread sleepForTimeInterval:1];
//            NSInteger x = [_lbl.text intValue];
//            x++;
//            dispatch_async(dispatch_get_main_queue(), ^{
//                _lbl.text = [NSString stringWithFormat:@"%ld", x];
//            });
//        }
//    });


//    int x =0;
//    for(int i=0; i<1000000; i++) {
//        for(int j=0; j<1000000; j++) {
//            if(x<1009) {
//                x++;
//            } else if(x>= 1009) {
//                x=0;
//            }
//        }
//    }


//    _global_stack = [[NSMutableArray alloc] init];
//    NSLock *lock1 = [NSLock new];
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        while (true) {
//            [NSThread sleepForTimeInterval:1];
//            [lock1 lock];
//            [_global_stack addObject:@"1"];
//            [lock1 unlock];
//        }
//
//    });
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        while (true) {
//            [NSThread sleepForTimeInterval:1];
//            [lock1 lock];
//            [_global_stack addObject:@"2"];
//            [lock1 unlock];
//        }
//    });
//    while(true) {
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"%@", _global_stack);
//    }

// Do any additional setup after loading the view, typically from a nib.

dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    while(true) {
        [NSThread sleepForTimeInterval:0.01];
        _rotation += M_PI/20;
        dispatch_async(dispatch_get_main_queue(), ^{
            _imgView.transform = CGAffineTransformMakeRotation(_rotation);
        });
    }
});

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
