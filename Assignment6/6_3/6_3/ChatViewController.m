//
//  ChatViewController.m
//  TH2_C
//
//  Created by Hung Ga 123 on 4/12/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate =self;
    self.tableView.dataSource =self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSMutableArray *array = self.dictChat[@"transcript"];
    return array.count;
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSMutableArray *array = self.dictChat[@"transcript"];
    NSMutableDictionary *subDict = array[indexPath.row];
    UITableViewCell *cell;
    if(subDict[@"alias"] == nil || [@"" isEqualToString:subDict[@"alias"]]) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"cellLeft" forIndexPath:indexPath];
        UILabel *lableLeft = [cell.contentView viewWithTag:1];
        lableLeft.text = subDict[@"message"];
        [lableLeft sizeToFit];
    } else {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"cellRight" forIndexPath:indexPath];
         UILabel *lableRight = [cell.contentView viewWithTag:2];
        lableRight.text = subDict[@"message"];
        [lableRight sizeToFit];
    }
    //UILabel *lable = [cell.contentView viewWithTag:1];
    //lable.text = subDict[@"message"];
    //[lable sizeToFit];
    return cell;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    UILabel *myLable = [cell.contentView viewWithTag:1];
    
    myLable.center = CGPointMake((cell.contentView.frame.origin.x+cell.contentView.frame.size.width
                                  /2-200),cell.contentView.frame.origin.y+ cell.contentView.frame.size.height/2);
    [UIView animateWithDuration:1.5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         myLable.center = CGPointMake(cell.contentView.frame.origin.x+cell.contentView.frame.size.width
                                                      /2 -70,cell.contentView.frame.origin.y+ cell.contentView.frame.size.height/2);
                     } completion:^(BOOL finished){
                         
                     }];
    UILabel *myLableRight = [cell.contentView viewWithTag:2];
    myLableRight.center = CGPointMake((cell.contentView.frame.origin.x+cell.contentView.frame.size.width
                                  /2+200),cell.contentView.frame.origin.y+ cell.contentView.frame.size.height/2);
    [UIView animateWithDuration:1.5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         myLableRight.center = CGPointMake(cell.contentView.frame.origin.x+cell.contentView.frame.size.width
                                                      /2 +90,cell.contentView.frame.origin.y+ cell.contentView.frame.size.height/2);
                     } completion:^(BOOL finished){
                         
                     }];

    
    
}
@end
