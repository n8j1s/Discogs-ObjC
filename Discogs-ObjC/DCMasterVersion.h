//
//  DCMasterVersion.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCReleaseBase.h"

@interface DCMasterVersion : DCReleaseBase

@property (readonly) NSString *country;
@property (readonly) NSString *released;
@property (readonly) NSString *catno;
@property (readonly) NSString *label;

@end
