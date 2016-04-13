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
        //UILabel *lableLeft = [cell.contentView viewWithTag:1];
        //lableLeft.text = subDict[@"message"];
    } else {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"cellRight" forIndexPath:indexPath];
       // UILabel *lableRight = [cell.contentView viewWithTag:2];
        //lableRight.text = subDict[@"message"];
    }
    UILabel *lable = [cell.contentView viewWithTag:1];
    lable.text = subDict[@"message"];
    [lable sizeToFit];
    return cell;
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
