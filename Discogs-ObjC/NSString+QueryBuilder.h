//
//  NSString+QueryBuilder.h
//  Discogs-ObjC
//
//  Created by admin on 1/13/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCSearchRequest.h"

@interface NSString (QueryBuilder)

-(NSString*)dc_toPaginatedUrl:(NSUInteger)pageNumber forPageSize:(NSUInteger)pageSize;
-(NSString*)dc_toSearchUrl:(DCSearchRequest*)searchRequest forPage:(NSUInteger)pageNumber andPageSize:(NSUInteger)pageSize;

@end
