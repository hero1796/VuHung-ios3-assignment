//
//  Game.h
//  Chess
//
//  Created by Hung Ga 123 on 4/2/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Piece.h"
@interface Game : NSObject
@property Player *whilePlayer;
@property Player *blackPlayer;
@property NSMutableArray *arrWhileChess;
@property NSMutableArray *arrBlackChess;
-(void) checkKill;
-(void) isGameOver;
@end
