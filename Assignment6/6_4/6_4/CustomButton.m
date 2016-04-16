//
//  CustomButton.m
//  6_4
//
//  Created by Hung Ga 123 on 4/14/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype) initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self != nil) {
        self.layer.cornerRadius = 10.0f;
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}
@end
