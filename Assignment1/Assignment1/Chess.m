//
//  Chess.m
//  Assignment1
//
//  Created by Hung Ga 123 on 3/29/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "Chess.h"

@implementation Chess

- (instancetype) init {
    self = [super init];
    if (self) {
        self.positionX =0;
        self.positionY =0;
    }
    return self;
   }

-(void) move {
    NSLog(@"Chess move !!!");
}

-(void) eat {
    NSLog(@"Chess eat !!!");
}
@end
