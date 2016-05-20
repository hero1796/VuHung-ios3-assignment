//
//  ChatViewController.h
//  TH2_C
//
//  Created by Hung Ga 123 on 4/12/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableDictionary *dictChat;
@end
