//
//  DCPagination.h
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCPaginationUrls.h"

@interface DCPagination : NSObject

@property (readonly) NSUInteger per_page;
@property (readonly) NSUInteger pages;
@property (readonly) NSUInteger page;
@property (readonly) NSUInteger items;
@property (readonly) DCPaginationUrls *urls;

@end
