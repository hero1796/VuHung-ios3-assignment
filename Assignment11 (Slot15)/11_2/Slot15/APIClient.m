//
//  APIClent.m
//  BaseProject
//
//  Created by ngocnk on 8/5/15.
//  Copyright (c) 2015 VNEXT. All rights reserved.
//

#import "APIClient.h"

@implementation APIClient

+ (instancetype)sharedClient {
    static APIClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[APIClient alloc]initWithBaseURL:[NSURL URLWithString:@"http://jsonplaceholder.typicode.com"]];
        _sharedClient.requestSerializer = [AFHTTPRequestSerializer serializer];
        _sharedClient.requestSerializer = [AFJSONRequestSerializer serializer];
        _sharedClient.responseSerializer = [AFJSONResponseSerializer serializer];
    });
    return _sharedClient;
}

- (void)getTermCondition:(NSDictionary*)params success:(BRequestHandler)success
{
    [[APIClient sharedClient] GET:@"posts" parameters:params progress:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        success(responseObject, nil);
        NSLog(@"JSON: %@", responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        success(nil, error);
    }];
}
@end
