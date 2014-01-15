//
//  DCDiscogsHttpManager.m
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCDiscogsHttpManager.h"

#define kBaseURL @"http://api.discogs.com"

@implementation DCDiscogsHttpManager

+(id)sharedManagerWithConfig:(DCDiscogsApiConfiguration *)config
{

    static DCDiscogsHttpManager *discogClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        discogClient = [[DCDiscogsHttpManager alloc] initWithBaseURL:[NSURL URLWithString:kBaseURL] andConfig:config];
    });
    
    return discogClient;
    
}



-(id)initWithBaseURL:(NSURL *)url andConfig:(DCDiscogsApiConfiguration*)config
{
    self = [super initWithBaseURL:url];
    if (self)
    {
        self.responseSerializer = [AFJSONResponseSerializer new];
        self.requestSerializer = [AFJSONRequestSerializer new];
        [self.requestSerializer setValue:config.userAgent forHTTPHeaderField:@"User-Agent"];
    }
    return self;
}

@end
