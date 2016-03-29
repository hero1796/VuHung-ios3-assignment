//
//  Xe.m
//  Assignment1
//
//  Created by Hung Ga 123 on 3/29/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "Xe.h"

@implementation Xe
-(instancetype) init {
    self = [super init];
    if (self) {
        self.positionX = 6;
        self.positionY = 7;
    }
    return self;
}

-(void) move {
    NSLog(@"Xe move !!");
}

-(void) eat {
    NSLog(@"Xe eat");
}

@end
