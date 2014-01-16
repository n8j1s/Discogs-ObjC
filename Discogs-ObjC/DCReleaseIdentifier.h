//
//  DCReleaseIdentifier.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCReleaseIdentifier : NSObject

@property (readonly) NSString *type;
@property (readonly) NSString *description;
@property (readonly) NSString *value;

@end
