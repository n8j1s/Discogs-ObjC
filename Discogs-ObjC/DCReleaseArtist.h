//
//  DCReleaseArtist.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCReleaseArtist : DCBaseObject

@property (readonly) NSString *role;
@property (readonly) NSString *tracks;
@property (readonly) NSString *anv;
@property (readonly) NSString *join;
@property (readonly) NSString *name;
@property (readonly) NSString *resource_url;

@end
