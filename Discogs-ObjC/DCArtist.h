//
//  DCArtist.h
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCBaseObject.h"

@interface DCArtist : DCBaseObject

@property (readonly) NSString *name;
@property (readonly) NSString *resource_url;
@property (readonly) NSString *releases_url;
@property (readonly) NSString *uri;
@property (readonly) NSString *realname;
@property (readonly) NSString *profile;
@property (readonly) NSString *data_quality;
@property (readonly) NSArray  *aliases;
@property (readonly) NSArray *namevariations;
@property (readonly) NSArray *urls;
@property (readonly) NSArray *images;


@end
