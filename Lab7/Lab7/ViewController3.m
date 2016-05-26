//
//  ViewController3.m
//  Lab6
//
//  Created by Hung Ga 123 on 5/21/16.
//  Copyright © 2016 Hung Ga 123. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSMutableURLRequest * request =[NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]];
    [_webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
