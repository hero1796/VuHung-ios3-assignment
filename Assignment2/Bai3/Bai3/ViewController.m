//
//  ViewController.m
//  Bai3
//
//  Created by Hung Ga 123 on 4/1/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [[UITableView alloc] init];
    _tableView.frame = CGRectMake(0, 0, 320, 568);
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [_tableView reloadData];
    [self.view addSubview: _tableView];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
//-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
//    return 3;
//}
-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50;
}
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier =@"Cell";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:CellIdentifier  forIndexPath: indexPath];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = @"Hello";
//    NSString *t =
    NSLog(@"%ld",indexPath.row);
    return cell;
}

-(void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [_tableView cellForRowAtIndexPath:indexPath];
//    NSString *cellText =cell.textLabel.text;
//    NSLog(@"%@",cellText);
   // NSIndexPath *selectedIndexPath = [tableView indexPathForSelectedRow];
    int i = (int) indexPath.row;
    NSLog(@"%d", i);
    
}

@end
