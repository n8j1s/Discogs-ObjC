//
//  DCLabel.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCLabel : DCBaseObject

@property (readonly) NSString *name;
@property (readonly) NSString *profile;
@property (readonly) NSString *resource_url;
@property (readonly) NSString *releases_url;
@property (readonly) NSString *uri;
@property (readonly) NSString *data_quality;
@property (readonly) NSString *contact_info;
@property (readonly) NSDictionary *parent_label;
@property (readonly) NSArray *sublabels;
@property (readonly) NSArray *urls;
@property (readonly) NSArray *images;

@end
