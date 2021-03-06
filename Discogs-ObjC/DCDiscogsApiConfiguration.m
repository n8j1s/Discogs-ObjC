//
//  DCDiscogsApiConfiguration.m
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCDiscogsApiConfiguration.h"
#import "DCDiscogsCommon.h"

@implementation DCDiscogsApiConfiguration

+(void)setUserAgent:(NSString *)userAgentString andTokenString:(NSString*)tokenString
{
    [[NSUserDefaults standardUserDefaults] setObject:userAgentString forKey:kDCUserAgentKey];
    [[NSUserDefaults standardUserDefaults] setObject:tokenString forKey:kDCTokenKey];
}

@end
