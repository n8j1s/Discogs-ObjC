//
//  DCDiscogsCommon.h
//  Pods
//
//  Created by admin on 1/15/14.
//
//

#import <Foundation/Foundation.h>

#define kBaseURL @"http://api.discogs.com"
#define kDCURLPathFormatArtists @"/artists/%lu"
#define kDCURLPathFormatArtistReleases @"/artists/%lu/releases"
#define kDCURLPathFormatReleases @"/releases/%lu"
#define kDCURLPathFormatMasters @"/masters/%lu"
#define kDCURLPathFormatMasterVersions @"/masters/%lu/versions"
#define kDCURLPathFormatLabels @"/labels/%lu"
#define kDCURLPathFormatLabelReleases @"/labels/%lu/releases"
#define kDCURLPathFormatSearch @"/database/search"
#define kDCUserAgentKey @"dc_userAgentKey"

@interface DCDiscogsCommon : NSObject

@end
