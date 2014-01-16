//
//  DCSearchResult.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCSearchResult : DCBaseObject

@property (readonly) NSArray *style;
@property (readonly) NSString *title;
@property (readonly) NSString *country;
@property (readonly) NSArray *format;
@property (readonly) NSString *uri;
@property (readonly) NSArray *label;
@property (readonly) NSString *catno;
@property (readonly) NSUInteger year;
@property (readonly) NSArray *genre;
@property (readonly) NSString *type;

@end
