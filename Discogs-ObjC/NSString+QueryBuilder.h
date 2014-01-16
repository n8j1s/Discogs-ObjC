//
//  NSString+QueryBuilder.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCSearchRequest.h"

@interface NSString (QueryBuilder)

-(NSString*)dc_toPaginatedUrl:(NSUInteger)pageNumber forPageSize:(NSUInteger)pageSize;
-(NSString*)dc_toSearchUrl:(DCSearchRequest*)searchRequest forPage:(NSUInteger)pageNumber andPageSize:(NSUInteger)pageSize;

@end
