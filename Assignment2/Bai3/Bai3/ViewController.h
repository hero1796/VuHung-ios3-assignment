//
//  ViewController.h
//  Bai3
//
//  Created by Hung Ga 123 on 4/1/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *tableData;

@end

