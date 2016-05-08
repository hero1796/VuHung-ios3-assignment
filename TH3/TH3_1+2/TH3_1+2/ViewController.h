//
//  ViewController.h
//  TH3_1+2
//
//  Created by Hung Ga 123 on 4/18/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *fieldView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *sendButton;

@end

