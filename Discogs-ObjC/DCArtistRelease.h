//
//  DCArtistRelease.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "DCReleaseBase.h"

@interface DCArtistRelease : DCReleaseBase

@property (readonly) NSString *artist;
@property (readonly) NSUInteger main_release;
@property (readonly) NSString *role;
@property (readonly) NSUInteger year;
@property (readonly) NSString *type;
@property (readonly) NSString *label;

@end
