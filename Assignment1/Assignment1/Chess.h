//
//  Chess.h
//  Assignment1
//
//  Created by Hung Ga 123 on 3/29/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chess : NSObject

@property int positionX;
@property int positionY;
- (void) move;
- (void) eat;
@end
