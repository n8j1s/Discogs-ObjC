//
//  DCSearchResults.h
//  Discogs-ObjC
//
//  Created by admin on 1/10/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCBaseObject.h"
#import "DCPagination.h"

@interface DCSearchResults : DCBaseObject

@property (readonly) DCPagination *pagination;
@property (readonly) NSArray *results;

@end
