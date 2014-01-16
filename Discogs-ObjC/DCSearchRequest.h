//
//  DCSearchRequest.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import <Foundation/Foundation.h>



typedef NS_ENUM(NSInteger, DCSearchType)
{
    release,
    master,
    artist,
    label
};

#define kSearchTypeArrayValue(enum) [@[@"release", @"master", @"artist", @"label"] objectAtIndex:enum]


@interface DCSearchRequest : NSObject

@property (nonatomic, assign) DCSearchType searchType;
@property (nonatomic, strong) NSString *query;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *release_title;
@property (nonatomic, strong) NSString *label;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *style;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *year;
@property (nonatomic, strong) NSString *format;
@property (nonatomic, strong) NSString *catno;
@property (nonatomic, strong) NSString *barcode;
@property (nonatomic, strong) NSString *track;
@property (nonatomic, strong) NSString *submitter;
@property (nonatomic, strong) NSString *contributor;
@property (nonatomic, strong) NSString *credit;
@property (nonatomic, strong) NSString *anv;

@end
