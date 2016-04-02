//
//  Rook.m
//  Chess
//
//  Created by Hung Ga 123 on 4/2/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "Rook.h"
@implementation Rook : Piece
-(instancetype) init {
    self = [super init];
    self.type = 4;
    return self;
}
-(void) isMoveValid:(NSMutableArray *)arrChess {
    NSLog(@"Rook");
}

@end
