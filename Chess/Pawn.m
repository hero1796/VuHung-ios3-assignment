//
//  Pawn.m
//  Chess
//
//  Created by Hung Ga 123 on 4/2/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "Pawn.h"

@implementation Pawn : Piece
-(instancetype) init {
    self = [super init];
    self.type = 5;
    return self;
}
-(void) isMoveValid:(NSMutableArray *)arrChess {
    NSLog(@"Pawn");
}
@end
