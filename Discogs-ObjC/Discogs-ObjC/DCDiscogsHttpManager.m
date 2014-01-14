//
//  DCDiscogsHttpManager.m
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCDiscogsHttpManager.h"

@implementation DCDiscogsHttpManager

+(instancetype)client
{
    static DCDiscogsHttpManager *discogClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        discogClient = [[DCDiscogsHttpManager alloc] initWithBaseURL:[NSURL URLWithString:@"http://api.discogs.com"]];
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
        [self.requestSerializer setValue:@"Discogs-ObjC Library v 1.0" forHTTPHeaderField:@"User-Agent"];
    }
    return self;
}

@end
