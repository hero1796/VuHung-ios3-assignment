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
@property NSMutableArray *data;
@end

@implementation ViewController
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
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
        //self.tableView.rowHeight =100;
        cell.backgroundColor = [UIColor yellowColor];
        cell.top.text = [self.data objectAtIndex:indexPath.row];
        //cell.bot.text = [self.data objectAtIndex:indexPath.row];
        
    } else {
        //self.tableView.rowHeight =50;
        cell.backgroundColor =[UIColor greenColor];
        //cell.top.text = [self.data objectAtIndex:indexPath.row];
        cell.bot.text = [self.data objectAtIndex:indexPath.row];
    }
    
    
    NSLog(@"%ld", indexPath.row);
    return cell;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.data = [NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"4",@"4",@"5",@"6",@"8",@"9",@"10",@"11",@"1122",@"988",@"102",@"078",@"12",@"214",@"f",@"afr",@"34",@"34",@"err",@"4",@"5",@"6",@"8",@"9",@"10",@"11",@"1122",@"988",@"102",@"078",@"12",@"214",@"f",@"afr",@"34",@"34",@"err", nil];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
