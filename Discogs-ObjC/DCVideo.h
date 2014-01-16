//
//  DCVideo.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//


@interface DCVideo : NSObject

@property (readonly) NSString *uri;
@property (readonly) NSUInteger duration;
@property (readonly) BOOL embed;
@property (readonly) NSString *description;
@property (readonly) NSString *title;

@end
