//
//  DCDiscogsApiConfiguration.h
//  Discogs-ObjC
//
//  Created by admin on 1/15/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCDiscogsApiConfiguration : NSObject

@property (nonatomic, strong) NSString *userAgent;

+(DCDiscogsApiConfiguration*)configuration;

@end
