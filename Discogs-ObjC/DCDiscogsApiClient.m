//
//  DCDiscogsApiClient.m
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCDiscogsApiClient.h"
#import "DCDiscogsHttpManager.h"
#import "NSString+QueryBuilder.h"
#import "DCDiscogsCommon.h"


@implementation DCDiscogsApiClient
{
    DCDiscogsHttpManager *httpManager;
}

-(id)init
{
    self = [super init];
    httpManager = [DCDiscogsHttpManager sharedManager];
    return self;
}


-(void)getArtistWithBlock:(NSUInteger)artistId success:(void (^)(DCArtist *))successBlock failure:(void (^)(NSError *))failureBlock
{
    NSString *formattedUrl = [NSString stringWithFormat:kDCURLPathFormatArtists, (unsigned long)artistId];
    [httpManager GET:formattedUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        DCArtist *artist = [[DCArtist alloc] initWithDictionary:responseObject];
        successBlock(artist);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        failureBlock(error);
        
    }];
}

-(void)getArtistReleasesWithBlock:(NSUInteger)artistId forPage:(NSUInteger)pageNumber withNumberOfResults:(NSUInteger)numberOfResults success:(void (^)(DCArtistReleases *))successBlock failure:(void (^)(NSError *))failureBlock
{
    NSString *formattedUrl = [[NSString stringWithFormat:kDCURLPathFormatArtistReleases, (unsigned long)artistId] dc_toPaginatedUrl:pageNumber forPageSize:numberOfResults];
    
    [httpManager GET:formattedUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        DCArtistReleases *releases = [[DCArtistReleases alloc] initWithDictionary:responseObject];
        successBlock(releases);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        failureBlock(error);
        
    }];
}


-(void)getReleaseWithBlock:(NSUInteger)releaseId success:(void (^)(DCRelease *))successBlock failure:(void (^)(NSError *))failureBlock
{
    NSString *formattedUrl = [NSString stringWithFormat:kDCURLPathFormatReleases, (unsigned long)releaseId];
    [httpManager GET:formattedUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        DCRelease *release = [[DCRelease alloc] initWithDictionary:responseObject];
        successBlock(release);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        failureBlock(error);
        
    }];
}


-(void)getMasterWithBlock:(NSUInteger)masterId success:(void (^)(DCMaster *))successBlock failure:(void (^)(NSError *))failureBlock
{
    NSString *formattedUrl = [NSString stringWithFormat:@"/masters/%lu", (unsigned long)masterId];
    [httpManager GET:formattedUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        DCMaster *master = [[DCMaster alloc] initWithDictionary:responseObject];
        successBlock(master);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        failureBlock(error);
        
    }];
}

-(void)getMasterVersionsWithBlock:(NSUInteger)masterId forPage:(NSUInteger)pageNumber withNumberOfResults:(NSUInteger)numberOfResults success:(void (^)(DCMasterVersions *))successBlock failure:(void (^)(NSError *))failureBlock
{
    NSString *formattedUrl = [[NSString stringWithFormat:kDCURLPathFormatMasterVersions, (unsigned long)masterId] dc_toPaginatedUrl:pageNumber forPageSize:numberOfResults];
    
    [httpManager GET:formattedUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        DCMasterVersions *versions = [[DCMasterVersions alloc] initWithDictionary:responseObject];
        successBlock(versions);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        failureBlock(error);
        
    }];
}

-(void)getLabelWithBlock:(NSUInteger)labelId success:(void (^)(DCLabel *))successBlock failure:(void (^)(NSError *))failureBlock
{
    NSString *formattedUrl = [NSString stringWithFormat:kDCURLPathFormatLabels, (unsigned long)labelId];
    
    [httpManager GET:formattedUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        DCLabel *label = [[DCLabel alloc] initWithDictionary:responseObject];
        successBlock(label);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        failureBlock(error);
        
    }];
}

-(void)getLabelReleasesWithBlock:(NSUInteger)labelId forPage:(NSUInteger)pageNumber withNumberOfResults:(NSUInteger)numberOfResults success:(void (^)(DCLabelReleases *))successBlock failure:(void (^)(NSError *))failureBlock
{
    NSString *formattedUrl = [[NSString stringWithFormat:kDCURLPathFormatLabelReleases, (unsigned long)labelId] dc_toPaginatedUrl:pageNumber forPageSize:numberOfResults];
    
    [httpManager GET:formattedUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        DCLabelReleases *releases = [[DCLabelReleases alloc] initWithDictionary:responseObject];
        successBlock(releases);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        failureBlock(error);
        
    }];
    
}


-(void)getSearchResultsWithBlock:(DCSearchRequest *)searchRequest forPage:(NSUInteger)pageNumber withNumberOfResults:(NSUInteger)numberOfResults success:(void (^)(DCSearchResults *))successBlock failure:(void (^)(NSError *))failureBlock
{
    NSString *formattedUrl = [[NSString stringWithFormat:kDCURLPathFormatSearch] dc_toSearchUrl:searchRequest forPage:pageNumber andPageSize:numberOfResults];
    
    [httpManager GET:formattedUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        DCSearchResults *results = [[DCSearchResults alloc] initWithDictionary:responseObject];
        successBlock(results);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        failureBlock(error);
        
    }];
}

@end
