//
//  ViewController.m
//  Bai2
//
//  Created by Hung Ga 123 on 4/9/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    if(indexPath.row %4 == 0) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
    } else   if(indexPath.row %4 == 1) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
    } else   if(indexPath.row %4 == 2) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell3" forIndexPath:indexPath];
    } else   if(indexPath.row %4 == 3) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell4" forIndexPath:indexPath];
    }
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 40;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row %4 == 0 || indexPath.row %4 == 2) {
        return 45;
    } else if(indexPath.row %4 ==1) {
        return 125;
    } else return 106;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
