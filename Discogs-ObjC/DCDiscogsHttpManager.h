//
//  DCDiscogsHttpManager.h
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"
#import "DCDiscogsApiConfiguration.h"

@interface DCDiscogsHttpManager : AFHTTPRequestOperationManager

+(id)sharedManagerWithConfig:(DCDiscogsApiConfiguration*)config

@end
