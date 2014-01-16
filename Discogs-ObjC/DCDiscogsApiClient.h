//
//  DCDiscogsApiClient.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCArtist.h"
#import "DCRelease.h"
#import "DCMaster.h"
#import "DCMasterVersions.h"
#import "DCLabel.h"
#import "DCLabelReleases.h"
#import "DCSearchRequest.h"
#import "DCSearchResults.h"
#import "DCArtistReleases.h"
#import "DCDiscogsApiConfiguration.h"

@interface DCDiscogsApiClient : NSObject


//artists
-(void)getArtistWithBlock:(NSUInteger)artistId success:(void (^)(DCArtist* artist))successBlock failure:(void (^)(NSError* error))failureBlock;
-(void)getArtistReleasesWithBlock:(NSUInteger)artistId forPage:(NSUInteger)pageNumber withNumberOfResults:(NSUInteger)numberOfResults success:(void (^)(DCArtistReleases* releases))successBlock failure:(void (^)(NSError* error))failureBlock;

//releases
-(void)getReleaseWithBlock:(NSUInteger)releaseId success:(void (^)(DCRelease* release))successBlock failure:(void (^)(NSError* error))failureBlock;

//masters
-(void)getMasterWithBlock:(NSUInteger)masterId success:(void (^)(DCMaster* master))successBlock failure:(void (^)(NSError* error))failureBlock;
-(void)getMasterVersionsWithBlock:(NSUInteger)masterId forPage:(NSUInteger)pageNumber withNumberOfResults:(NSUInteger)numberOfResults success:(void (^)(DCMasterVersions* versions))successBlock failure:(void (^)(NSError* error))failureBlock;

//labels
-(void)getLabelWithBlock:(NSUInteger)labelId success:(void (^)(DCLabel* label))successBlock failure:(void (^)(NSError* error))failureBlock;
-(void)getLabelReleasesWithBlock:(NSUInteger)labelId forPage:(NSUInteger)pageNumber withNumberOfResults:(NSUInteger)numberOfResults success:(void (^)(DCLabelReleases* releases))successBlock failure:(void (^)(NSError* error))failureBlock;

//search
-(void)getSearchResultsWithBlock:(DCSearchRequest*)searchRequest forPage:(NSUInteger)pageNumber withNumberOfResults:(NSUInteger)numberOfResults success:(void (^)(DCSearchResults* results))successBlock failure:(void (^)(NSError* error))failureBlock;

@end
