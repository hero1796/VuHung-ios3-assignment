//
//  Tot.m
//  Assignment1
//
//  Created by Hung Ga 123 on 3/29/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "Tot.h"

@implementation Tot
-(instancetype) init {
    self = [super init];
    if (self) {
        self.positionX = 4;
        self.positionY = 5;
    }
    return self;
}

-(void) move {
    NSLog(@"Tot move !!!");
}

-(void) eat {
    NSLog(@"Tot eat !!");
}
@end
