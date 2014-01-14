//
//  DCImage.h
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//


@interface DCImage : NSObject

@property (readonly) NSString *type;
@property (readonly) NSUInteger *width;
@property (readonly) NSUInteger *height;
@property (readonly) NSString *uri;
@property (readonly) NSString *uri150;
@property (readonly) NSString *resource_uri;

@end
