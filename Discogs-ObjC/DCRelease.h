//
//  DCRelease.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCBaseObject.h"
#import "DCCommunity.h"

@interface DCRelease : DCBaseObject


@property (readonly) NSString *title;
@property (readonly) NSString *resource_url;
@property (readonly) NSString *uri;
@property (readonly) NSString *status;
@property (readonly) NSString *data_quality;
@property (readonly) NSUInteger master_id;
@property (readonly) NSString *master_url;
@property (readonly) NSString *country;
@property (readonly) NSUInteger year;
@property (readonly) NSString *released;
@property (readonly) NSString *notes;
@property (readonly) NSString *styles;
@property (readonly) NSString *genres;
@property (readonly) NSUInteger estimated_weight;
@property (readonly) NSString *format_quantity;

@property (readonly) DCCommunity *community;
@property (readonly) NSArray *labels;
@property (readonly) NSArray *companies;
@property (readonly) NSArray *extraartists;
@property (readonly) NSArray *artists;
@property (readonly) NSArray *videos;
@property (readonly) NSArray *formats;
@property (readonly) NSArray *images;
@property (readonly) NSArray *identifiers;
@property (readonly) NSArray *tracklist;


@end
