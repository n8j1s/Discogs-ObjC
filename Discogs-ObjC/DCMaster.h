//
//  DCMaster.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCMaster : DCBaseObject

@property(readonly) NSString *title;
@property(readonly) NSString *resource_url;
@property(readonly) NSString *versions_url;
@property(readonly) NSString *uri;
@property(readonly) NSUInteger main_release;
@property(readonly) NSString *main_release_url;
@property(readonly) NSNumber *year;
@property(readonly) NSArray *styles;
@property(readonly) NSArray *genres;
@property(readonly) NSString *data_quality;
@property(readonly) NSArray *videos;
@property(readonly) NSArray *artists;
@property(readonly) NSArray *images;
@property(readonly) NSArray *tracklist;

@end
