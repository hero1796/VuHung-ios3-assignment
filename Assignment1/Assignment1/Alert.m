//
//  Alert.m
//  Assignment1
//
//  Created by Hung Ga 123 on 3/29/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "Alert.h"

@implementation Alert
-(instancetype) init {
    self = [super init];
    if(self) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (self.instance != nil) {
                [self.instance X];
            }
        });
    }
    return self;
}
-(void) X {
    NSLog(@"May ha buoi");
}
@end
