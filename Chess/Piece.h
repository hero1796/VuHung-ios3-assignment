//
//  Piece.h
//  Chess
//
//  Created by Hung Ga 123 on 4/2/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    King =0,
    Queen =1,
    Knight =2,
    Bishop = 3,
    Rook =4,
    Pawn =5,
} Chess_Type;

@interface Piece : NSObject
@property Chess_Type type;
@property int color;
@property int x;
@property int y;
-(BOOL) isMoveValid: (NSMutableArray *) arrChess;

@end
