//
//  Vua.m
//  Assignment1
//
//  Created by Hung Ga 123 on 3/29/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "Vua.h"

@implementation Vua
-(instancetype) init {
    self = [super init];
    if (self) {
        self.positionX = 2;
        self.positionY = 3;
    }
    return self;
}

-(void) move {
    NSLog(@"Vua move !!");
}

-(void) eat {
    NSLog(@"Vua eat");
}
@end
