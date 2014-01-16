//
//  DCReleaseFormat.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCReleaseFormat : NSObject

@property (readonly) NSArray *descriptions;
@property (readonly) NSString *name;
@property (readonly) NSString *qty;

@end
