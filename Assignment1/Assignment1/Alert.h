//
//  Alert.h
//  Assignment1
//
//  Created by Hung Ga 123 on 3/29/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Rule <NSObject>
@required
-(void) X;

@end

@interface Alert : NSObject
@property id/* Rule */ instance;

@end
