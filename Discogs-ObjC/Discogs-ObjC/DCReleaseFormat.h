//
//  DCReleaseFormat.h
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCReleaseFormat : NSObject

@property (readonly) NSArray *descriptions;
@property (readonly) NSString *name;
@property (readonly) NSString *qty;

@end
