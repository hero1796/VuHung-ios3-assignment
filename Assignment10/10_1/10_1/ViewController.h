//
//  ViewController.h
//  10_1
//
//  Created by Hung Ga 123 on 5/7/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)clickedAdd:(id)sender;

@end

