//
//  ViewController.m
//  Bai1
//
//  Created by Hung Ga 123 on 4/8/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
@interface ViewController ()

@end

@implementation ViewController
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCellIdentifier"];
    
    if (cell == nil) {
        [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = self.customCell;
        self.customCell = nil;
    }
    if(indexPath.row %2 ==0) {
        self.tableView.rowHeight =100;
        cell.backgroundColor = [UIColor yellowColor];
    } else {
        self.tableView.rowHeight =50;
        cell.backgroundColor =[UIColor greenColor];
    }
    cell.top.text = @"I am on top";
    cell.bot.text = @"and I'm on the bottom";
    NSLog(@"%ld", indexPath.row);
    return cell;
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
