//
//  ViewController.m
//  TH2_A
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
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Data_1" ofType:@""];
    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    NSError *jsonError;
    NSData *objectData = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json =[NSJSONSerialization JSONObjectWithData:objectData options:NSJSONReadingMutableContainers error:&jsonError];
  
    NSLog(@"%@\n\n\n", content);
    NSLog(@"%@", json[@"title"]);
    NSLog(@"%@", json[@"link"]);
    NSLog(@"%@", json[@"descrition"]);
    
    NSArray *itemsArray = json[@"items"];
    for(NSDictionary *dict in itemsArray){
        NSLog(@"%@", dict[@"title"]);
        NSLog(@"%@", dict[@"link"]);
        NSLog(@"%@", dict[@"descrition"]);
        NSLog(@"%@", dict[@"pubDate"]);
        NSLog(@"%@\n\n\n", dict[@"author"]);
    }
    
    
    NSMutableDictionary *mutableJson = [json mutableCopy];
    NSMutableArray *mutableItemsArray = [itemsArray mutableCopy];
    
    for(int i =0; i< mutableItemsArray.count; i++) {
        NSMutableDictionary *mutableJsonItems = [mutableItemsArray[i] mutableCopy];
        mutableItemsArray [i] = mutableJsonItems;
    }
    mutableJson[@"items"] = mutableItemsArray;
    NSLog(@"%@", mutableJson);
    
    for(NSMutableDictionary *muDict in mutableJson[@"items"]) {
        if([@"An article" isEqualToString:muDict[@"title"]]) {
            muDict[@"title"] = @"Anh Hung dep trai";
        }
        if([@"http://www.example.com/third-article" isEqualToString:muDict[@"link"]]) {
            muDict[@"link"] = @"http://google.com";
        }
    }
    NSLog(@"%@", mutableJson);
    NSError *error2;
    NSData *data2 = [NSJSONSerialization dataWithJSONObject:mutableJson options:0 error:&error2];
    NSString *string2 = [[NSString alloc] initWithData:data2 encoding:NSUTF8StringEncoding];
    NSLog(@"%@", string2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
