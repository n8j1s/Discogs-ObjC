//
//  NSString+QueryBuilder.m
//  Discogs-ObjC
//
//  Created by admin on 1/13/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
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
        [searchString appendFormat:@"&q=%@", searchRequest.query];
    if ([searchRequest.title length] > 0)
        [searchString appendFormat:@"&title=%@", searchRequest.title];
    if ([searchRequest.release_title length] > 0)
        [searchString appendFormat:@"&release_title=%@", searchRequest.release_title];
    if ([searchRequest.credit length] > 0)
        [searchString appendFormat:@"&credit=%@", searchRequest.credit];
    if ([searchRequest.anv length] > 0)
        [searchString appendFormat:@"&anv=%@", searchRequest.anv];
    if ([searchRequest.label length] > 0)
        [searchString appendFormat:@"&label=%@", searchRequest.label];
    if ([searchRequest.genre length] > 0)
        [searchString appendFormat:@"&genre=%@", searchRequest.genre];
    if ([searchRequest.style length] > 0)
        [searchString appendFormat:@"&style=%@", searchRequest.style];
    if ([searchRequest.country length] > 0)
        [searchString appendFormat:@"&country=%@", searchRequest.country];
    if ([searchRequest.year length] > 0)
        [searchString appendFormat:@"&year=%@", searchRequest.year];
    if ([searchRequest.format length] > 0)
        [searchString appendFormat:@"&format=%@", searchRequest.format];
    if ([searchRequest.catno length] > 0)
        [searchString appendFormat:@"&catno=%@", searchRequest.catno];
    if ([searchRequest.barcode length] > 0)
        [searchString appendFormat:@"&barcode=%@", searchRequest.barcode];
    if ([searchRequest.track length] > 0)
        [searchString appendFormat:@"&track=%@", searchRequest.track];
    if ([searchRequest.submitter length] > 0)
        [searchString appendFormat:@"&submitter=%@", searchRequest.submitter];
    if ([searchRequest.contributor length] > 0)
        [searchString appendFormat:@"&contributor=%@", searchRequest.contributor];
    
    return [searchString copy];
}


@end
