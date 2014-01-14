//
//  DCVideo.h
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//


@interface DCVideo : NSObject

@property (readonly) NSString *uri;
@property (readonly) NSUInteger duration;
@property (readonly) BOOL embed;
@property (readonly) NSString *description;
@property (readonly) NSString *title;

@end
