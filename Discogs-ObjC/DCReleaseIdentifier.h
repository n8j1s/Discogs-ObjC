//
//  DCReleaseIdentifier.h
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCReleaseIdentifier : NSObject

@property (readonly) NSString *type;
@property (readonly) NSString *description;
@property (readonly) NSString *value;

@end
