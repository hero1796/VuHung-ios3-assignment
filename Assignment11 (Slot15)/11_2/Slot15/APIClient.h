//
//  APIClent.h
//  BaseProject
//
//  Created by ngocnk on 8/5/15.
//  Copyright (c) 2015 VNEXT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

#define bJSONSuccess 200
#define bJSONNoInternetConnection 0
#define bJSONRequestTimeoutError 408

typedef void (^BRequestHandler)(id response, NSError *error);

@interface APIClient : AFHTTPSessionManager

+ (instancetype)sharedClient;
- (BOOL)isNetworkConnection;

- (void)getTermCondition:(NSDictionary*)params success:(BRequestHandler)success;

@end
