//
//  DCMasterVersion.h
//  Discogs-ObjC
//
//  Created by admin on 1/14/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCReleaseBase.h"

@interface DCMasterVersion : DCReleaseBase

@property (readonly) NSString *country;
@property (readonly) NSString *released;
@property (readonly) NSString *catno;
@property (readonly) NSString *label;

@end
