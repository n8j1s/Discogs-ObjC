//
//  DCSearchResult.h
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCSearchResult : DCBaseObject

@property (readonly) NSArray *style;
@property (readonly) NSString *title;
@property (readonly) NSString *country;
@property (readonly) NSArray *format;
@property (readonly) NSString *uri;
@property (readonly) NSString *label;
@property (readonly) NSString *catno;
@property (readonly) NSUInteger year;
@property (readonly) NSArray *genre;
@property (readonly) NSString *type;

@end
