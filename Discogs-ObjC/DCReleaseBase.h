//
//  DCReleaseBase.h
//  Discogs-ObjC
//
//  Created by admin on 1/13/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//




#import "DCBaseObject.h"

@interface DCReleaseBase : DCBaseObject

@property (readonly) NSString *title;
@property (readonly) NSString *status;
@property (readonly) NSString *thumb;
@property (readonly) NSString *format;
@property (readonly) NSString *label;
@property (readonly) NSString *resource_url;

@end
