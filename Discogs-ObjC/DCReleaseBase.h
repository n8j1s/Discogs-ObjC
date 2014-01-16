//
//  DCReleaseBase.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//




#import "DCBaseObject.h"

@interface DCReleaseBase : DCBaseObject

@property (readonly) NSString *title;
@property (readonly) NSString *status;
@property (readonly) NSString *thumb;
@property (readonly) NSString *format;
@property (readonly) NSString *resource_url;

@end
