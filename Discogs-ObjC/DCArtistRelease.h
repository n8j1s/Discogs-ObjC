//
//  DCArtistRelease.h
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "DCReleaseBase.h"

@interface DCArtistRelease : DCReleaseBase

@property (readonly) NSString *artist;
@property (readonly) NSUInteger main_release;
@property (readonly) NSString *role;
@property (readonly) NSUInteger year;
@property (readonly) NSString *type;


@end
