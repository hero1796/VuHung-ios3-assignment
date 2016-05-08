//
//  ViewController.m
//  TH3_1+2
//
//  Created by Hung Ga 123 on 4/18/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"
#import "LeftCell.h"
#import "RightCell.h"
@interface ViewController ()
@property NSMutableArray *chatArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.chatArray = [[NSMutableArray alloc] initWithObjects:@"Hi"
                      ,@"Do you like cakes?"
                      ,@"Why yes I do!"
                      ,@"I love to eat cake!"
                      ,@"How is your weather today?"
                      ,@"What is your favorite color?"
                      ,@"Are you there?"
                      ,@"Very nice chat you have here"
                      ,@"That is a very nice hat you are wearing ;)"
                      ,@"Pancakes"
                      ,@"Why yes! As a matter of fact we do have waffles, let me show you."
                      ,@"May I ask who this is?"
                      ,@"Wow! Back from the dead eh, Ned?!"
                      ,@"Well I canleave all that to Catelyn now can I!?"
                      ,@"Oh gotta run! The Others are about"
                      ,@"Hi I have a question about your kitty spaceships? I see you are coming from the U.S As a matter of fact we do have waffles, let me show you"
                      ,@"Hi there! I see you are coming from the U.S. We do ship there, is there anything I can help with?  "
                      ,@"Hello"
                      ,@"Hello there!" "How are you?"
                      ,@"Great thank you!"
                      ,@"May I ask who this is?"
                      ,@"This is Ned Stark!"
                      ,@"Wow! Back from the dead eh, Ned?!"
                      ,nil];
    // Do any additional setup after loading the view, typically from a nib.
    self.fieldView.backgroundColor = [UIColor colorWithRed:10.0f/255.0f green:10.0f/255.0f blue:10.0f/255.0f alpha:0.3];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.chatArray.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row %2 ==0) {
        LeftCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LeftCell" forIndexPath:indexPath];
        [self updateCell:cell array:self.chatArray cellForRowAtIndexPath:indexPath];
        return cell;
    } else {
        RightCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RightCell" forIndexPath:indexPath];
        [self updateCell:cell array:self.chatArray cellForRowAtIndexPath:indexPath];
        return cell;
    }
}

-(float) updateCell: (UITableViewCell*) cell array: (NSArray*) arr cellForRowAtIndexPath:(NSIndexPath*) indexPath {
    if(indexPath.row %2 ==0) {
        cell.backgroundColor = [UIColor clearColor];
        
        UIImageView *leftImg = [cell.contentView viewWithTag:3];
        leftImg.contentMode = UIViewContentModeScaleAspectFill;
        leftImg.layer.cornerRadius =  leftImg.frame.size.height/2;
        leftImg.layer.borderWidth = 2.5f;
        leftImg.layer.borderColor = [UIColor whiteColor].CGColor;
        leftImg.layer.masksToBounds = YES;
        leftImg.transform = CGAffineTransformMakeScale(0.1f, 0.1f);
        [UIView animateWithDuration:1.0f delay:0.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
            leftImg.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
        } completion:^(BOOL finished) {
            
        }];
        
        UILabel *leftLbl = [cell.contentView viewWithTag:1];
        leftLbl.text = [self.chatArray objectAtIndex:indexPath.row];
        leftLbl.layer.cornerRadius = 10.0f;
        leftLbl.layer.masksToBounds = YES;
// size to fit
        leftLbl.frame = CGRectMake(leftLbl.frame.origin.x, leftLbl.frame.origin.y, 180, leftLbl.frame.size.height);
        [leftLbl sizeToFit];
        leftLbl.frame = CGRectMake(-320
                                   , leftLbl.frame.origin.y + 100
                                   , leftLbl.frame.size.width + 20
                                   , leftLbl.frame.size.height);
        [UIView animateWithDuration:1.0f delay:1.0f usingSpringWithDamping:0.4f initialSpringVelocity:0.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
            leftLbl.frame = CGRectMake(leftImg.frame.origin.x + leftImg.frame.size.width + 8
                                       , leftLbl.frame.origin.y - 100
                                       , leftLbl.frame.size.width
                                       , leftLbl.frame.size.height);
        } completion:^(BOOL finished) {
            
        }];
        return leftLbl.frame.origin.y + leftLbl.frame.size.height + 10;
    } else {
        cell.backgroundColor = [UIColor clearColor];
        
        UIImageView *rightImg = [cell.contentView viewWithTag:4];
        rightImg.contentMode = UIViewContentModeScaleAspectFill;
        rightImg.layer.cornerRadius =  rightImg.frame.size.height/2;
        rightImg.layer.borderWidth = 2.5f;
        rightImg.layer.borderColor = [UIColor whiteColor].CGColor;
        rightImg.layer.masksToBounds = YES;
        rightImg.transform = CGAffineTransformMakeScale(0.1f, 0.1f);
        [UIView animateWithDuration:1.0f delay:0.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
            rightImg.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
        } completion:^(BOOL finished) {

        }];

        UILabel *rightLbl = [cell.contentView viewWithTag:2];
        rightLbl.text = [self.chatArray objectAtIndex:indexPath.row];
        rightLbl.layer.cornerRadius = 10.0f;
        rightLbl.layer.masksToBounds = YES;
//size to fit
        rightLbl.frame = CGRectMake(rightLbl.frame.origin.x, rightLbl.frame.origin.y, 180, rightLbl.frame.size.height);
        [rightLbl sizeToFit];
        rightLbl.frame = CGRectMake(321
                                    , rightLbl.frame.origin.y - 100
                                    , rightLbl.frame.size.width + 20
                                    , rightLbl.frame.size.height);
        
        [UIView animateWithDuration:1.0f delay:1.0f usingSpringWithDamping:0.4f initialSpringVelocity:0.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
            
            rightLbl.frame = CGRectMake(rightImg.frame.origin.x - rightLbl.frame.size.width -8
                                        , rightLbl.frame.origin.y + 100
                                        , rightLbl.frame.size.width
                                        , rightLbl.frame.size.height);
            
        } completion:^(BOOL finished) {
            
        }];

        return rightLbl.frame.origin.y + rightLbl.frame.size.height +10;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row %2 ==0) {
        LeftCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LeftCell"];
        float height = [self updateCell:cell array:self.chatArray cellForRowAtIndexPath:indexPath];
        return height;
    } else {
        RightCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RightCell"];
        float height = [self updateCell:cell array:self.chatArray cellForRowAtIndexPath:indexPath];
        return height;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
