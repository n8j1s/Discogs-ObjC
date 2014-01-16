//
//  NSString+QueryBuilder.m
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "NSString+QueryBuilder.h"


@implementation NSString (QueryBuilder)


-(NSString*)dc_toPaginatedUrl:(NSUInteger)pageNumber forPageSize:(NSUInteger)pageSize
{
    if (pageNumber < 1)
        pageNumber = 1;
    if (pageSize < 1)
        pageSize = 10;
    
    return [NSString stringWithFormat:@"%@?page=%lu&per_page=%lu", self, (unsigned long)pageNumber, (unsigned long)pageSize];
}

-(NSString *)dc_toSearchUrl:(DCSearchRequest *)searchRequest forPage:(NSUInteger)pageNumber andPageSize:(NSUInteger)pageSize
{
    NSMutableString *searchString = [[self dc_toPaginatedUrl:pageNumber forPageSize:pageSize] mutableCopy];
    
    [searchString appendFormat:@"&type=%@", kSearchTypeArrayValue(searchRequest.searchType)];
    
    if ([searchRequest.query length] > 0)
        [searchString appendFormat:@"&q=%@", [searchRequest.query dc_urlEncodeString]];
    if ([searchRequest.title length] > 0)
        [searchString appendFormat:@"&title=%@", [searchRequest.title dc_urlEncodeString]];
    if ([searchRequest.release_title length] > 0)
        [searchString appendFormat:@"&release_title=%@", [searchRequest.release_title  dc_urlEncodeString]];
    if ([searchRequest.credit length] > 0)
        [searchString appendFormat:@"&credit=%@", [searchRequest.credit dc_urlEncodeString]];
    if ([searchRequest.anv length] > 0)
        [searchString appendFormat:@"&anv=%@", [searchRequest.anv dc_urlEncodeString]];
    if ([searchRequest.label length] > 0)
        [searchString appendFormat:@"&label=%@", [searchRequest.label dc_urlEncodeString]];
    if ([searchRequest.genre length] > 0)
        [searchString appendFormat:@"&genre=%@", [searchRequest.genre dc_urlEncodeString]];
    if ([searchRequest.style length] > 0)
        [searchString appendFormat:@"&style=%@", [searchRequest.style dc_urlEncodeString]];
    if ([searchRequest.country length] > 0)
        [searchString appendFormat:@"&country=%@", [searchRequest.country dc_urlEncodeString]];
    if ([searchRequest.year length] > 0)
        [searchString appendFormat:@"&year=%@", [searchRequest.year dc_urlEncodeString]];
    if ([searchRequest.format length] > 0)
        [searchString appendFormat:@"&format=%@", [searchRequest.format dc_urlEncodeString]];
    if ([searchRequest.catno length] > 0)
        [searchString appendFormat:@"&catno=%@", [searchRequest.catno dc_urlEncodeString]];
    if ([searchRequest.barcode length] > 0)
        [searchString appendFormat:@"&barcode=%@", [searchRequest.barcode dc_urlEncodeString]];
    if ([searchRequest.track length] > 0)
        [searchString appendFormat:@"&track=%@", [searchRequest.track dc_urlEncodeString]];
    if ([searchRequest.submitter length] > 0)
        [searchString appendFormat:@"&submitter=%@", [searchRequest.submitter dc_urlEncodeString]];
    if ([searchRequest.contributor length] > 0)
        [searchString appendFormat:@"&contributor=%@", [searchRequest.contributor dc_urlEncodeString]];
    
    return [searchString copy];
}


-(NSString*)dc_urlEncodeString
{
    return [self stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}


@end
