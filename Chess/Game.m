//
//  Game.m
//  Chess
//
//  Created by Hung Ga 123 on 4/2/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "Game.h"

@implementation Game
-(instancetype) init {
    self = [super init];
    self.whilePlayer = [[Player alloc] init];
    self.blackPlayer = [[Player alloc] init];

    self.arrWhileChess =[[NSMutableArray alloc] init];
    
    self.arrBlackChess = [[NSMutableArray alloc] init];
    return self;

}
-(void) checkKill {
    
}
-(void) isGameOver {
    
}
@end
