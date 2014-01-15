//
//  DCDiscogsApiConfiguration.m
//  Discogs-ObjC
//
//  Created by admin on 1/15/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCDiscogsApiConfiguration.h"
#import "DCDiscogsCommon.h"

@implementation DCDiscogsApiConfiguration

+(void)setUserAgent:(NSString *)userAgentString
{
    [[NSUserDefaults standardUserDefaults] setObject:userAgentString forKey:kDCUserAgentKey];
}

@end
