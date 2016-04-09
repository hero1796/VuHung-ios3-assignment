//
//  ViewController.h
//  Bai1
//
//  Created by Hung Ga 123 on 4/8/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCell.h"
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet CustomCell *customCell;

@end

