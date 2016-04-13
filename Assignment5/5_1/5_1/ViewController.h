//
//  ViewController.h
//  5_1
//
//  Created by Hung Ga 123 on 4/12/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"
@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet CustomTableViewCell *customTableViewCell;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet CustomTableViewCell *customCell2;
@property (weak, nonatomic) IBOutlet UISlider *xxx;

@end

