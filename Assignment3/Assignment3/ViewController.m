//
//  ViewController.m
//  Assignment3
//
//  Created by Hung Ga 123 on 4/5/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
//    self.pickerView.delegate =self;
//    self.pickerView.dataSource =self;
//    self.tableData = [[NSMutableArray alloc] init];
    self.pickerData1 = [NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12", nil];
//  self.pickerData2 = [NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23",@"24",@"25",@"26",@"27", nil];
    
    self.pickerData2 = [[NSMutableArray alloc]initWithObjects:@"Xong",@"Con",@"Me",@"No",@"Roi", nil];
//
//    // Image View
//    for(int i=0; i<1600; i+=160) {
//        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(207, i, 40, 40)];
//        [imageView setImage:[UIImage imageNamed:@"Black_N_3.png"]];
//        [imageView setContentMode:UIViewContentModeScaleAspectFit];
//        [self.tableData addObject:imageView];
//    }
//    
//    // Lable
//    for(int i=40; i<1600; i+=160) {
//        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, i, 100, 40)];
//        lable.text = @"Hello Lable";
//        lable.textColor = [UIColor blackColor];
//        lable.backgroundColor = [UIColor redColor];
//        [self.tableData addObject:lable];
//    }
//    // Button
//    for (int i=80; i<1600; i+=160) {
//        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, i, 100, 40)];
//        [button setTitle:@"Hello button" forState:UIControlStateNormal];
//        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        button.layer.cornerRadius = 10;
//        button.clipsToBounds = NO;
//        [button setEnabled:YES];
//        button.backgroundColor =[UIColor lightGrayColor];
//        [self.tableData addObject:button];
//        
//        [button addTarget:self action:@selector(yourButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
//    }
//    // PickerView
//    for (int i= 120; i<1600; i+=160) {
//        UIPickerView *pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(250, i, 150, 40)];
//        pickerView.backgroundColor = [UIColor purpleColor];
//        [self.tableData addObject:pickerView];
//        pickerView.delegate = self;
//        pickerView.dataSource = self;
//        
//        UITapGestureRecognizer *click = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click:)];
//        [pickerView addGestureRecognizer:click];
//    }
//    
// add tableView
    [self.view addSubview: self.tableView];
//    
//// add imageView
//    for(int i=0; i<10; i++) {
//        [self.tableView addSubview:[self.tableData objectAtIndex:i]];
//    }
//    
//// add lable
//    for(int i=10; i<20; i++) {
//        [self.tableView addSubview:[self.tableData objectAtIndex:i]];
//    }
//    
//// add button
//    for(int i= 20; i<30; i++) {
//        [self.tableView addSubview:[self.tableData objectAtIndex:i]];
//    }
//// add pickerView
//    for(int i= 30; i<40; i++) {
//        [self.tableView addSubview:[self.tableData objectAtIndex:i]];
//        
//    }
//    
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
//    [self.tableView autoresizingMask];
//   [self.tableView reloadData];
}


// impliment protocol of UITableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 40;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
//       if(indexPath.row %4 == 0) {
//           cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell1" ];
//           if(cell == nil) {
//               cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell1"];
//           }
//           cell.backgroundColor = [UIColor blackColor];
//       } else  if(indexPath.row %4 == 1) {
//           cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell2" ];
//           if(cell == nil) {
//               cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell2"];
//           }
//           cell.backgroundColor = [UIColor yellowColor];
//       } else  if(indexPath.row %4 == 2) {
//           cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell3" ];
//           if(cell == nil) {
//               cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell3"];
//           }
//           cell.backgroundColor = [UIColor redColor];
//       } else  if(indexPath.row %4 == 3) {
//           cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell4" ];
//           if(cell == nil) {
//               cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell4"];
//           }
//           cell.backgroundColor = [UIColor whiteColor];
//       }
    if(indexPath.row %4 ==0) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath ];
    } else  if(indexPath.row %4 ==1) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath ];
    } else  if(indexPath.row %4 ==2) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell3" forIndexPath:indexPath ];
    } else  if(indexPath.row %4 ==3) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell4" forIndexPath:indexPath ];
    }

    NSLog(@"%ld", indexPath.row);
    NSLog(@"%@", indexPath);
    return cell;
}
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Clicked row");
}

// impliment protocol of Button
-(void) clicked:(UIButton*)sender {
    NSLog(@"Clicked button");
}

// impliment protocol of UIPickerView
-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if(component ==0) {
        return [self.pickerData1 count];
    } else
        return [self.pickerData2 count];
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component  {
    if(component ==0) {
        return 50;
    } else
        return 100;
}
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component  {
    return 50;
}
- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component  {
    if(component ==0) {
        return [self.pickerData1 objectAtIndex:row];
    } else
        return [self.pickerData2 objectAtIndex:row];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:
(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"Selected row of component");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
