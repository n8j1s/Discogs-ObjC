//
//  DCDiscogsHttpManager.m
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCDiscogsHttpManager.h"
#import "DCDiscogsCommon.h"


@implementation DCDiscogsHttpManager


+(id)sharedManager
{

    static DCDiscogsHttpManager *discogClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        discogClient = [[DCDiscogsHttpManager alloc] initWithBaseURL:[NSURL URLWithString:kBaseURL]];
    });
    
    return discogClient;
    
}



-(id)initWithBaseURL:(NSURL *)url
{
    self = [super initWithBaseURL:url];
    if (self)
    {
        self.responseSerializer = [AFJSONResponseSerializer new];
        self.requestSerializer = [AFJSONRequestSerializer new];
        [self.requestSerializer setValue:[[NSUserDefaults standardUserDefaults] objectForKey:kDCUserAgentKey] forHTTPHeaderField:@"User-Agent"];
    }
    return self;
}

@end
