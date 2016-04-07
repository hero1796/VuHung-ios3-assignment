//
//  ViewController.h
//  Assignment3
//
//  Created by Hung Ga 123 on 4/5/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)clicked:(id)sender;


@property NSMutableArray *pickerData1;
@property NSMutableArray *pickerData2;
@end

