//
//  ViewController.m
//  5_1
//
//  Created by Hung Ga 123 on 4/12/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate =self;
    self.tableView.dataSource =self;
    [self.xxx addTarget:self action:@selector(valueChanged2:) forControlEvents:UIControlEventValueChanged];
   
     
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell;
  NSArray *nib =  [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:self options:nil];
    if(indexPath.row %2 ==0) {
  //  cell = self.customTableViewCell;
        cell =[ nib objectAtIndex:1];
    } else {
       // cell = self.customCell2;
        cell = [nib objectAtIndex:0];
    }
    return cell;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (IBAction)valueChanged2:(UISlider *)sender {
     NSLog(@"ok roi !");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
