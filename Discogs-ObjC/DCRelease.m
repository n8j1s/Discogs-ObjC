//
//  DCRelease.m
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCRelease.h"
#import "DCKeyValueObjectMapping.h"
#import "DCArrayMapping.h"
#import "DCParserConfiguration.h"

#import "DCReleaseLabel.h"
#import "DCReleaseTrack.h"
#import "DCReleaseIdentifier.h"
#import "DCReleaseArtist.h"
#import "DCReleaseFormat.h"
#import "DCVideo.h"
#import "DCImage.h"

@implementation DCRelease

-(id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super initWithDictionary:dictionary];
    if (!self)
        return nil;
    
    //release mapping
    DCArrayMapping *artistMapper = [DCArrayMapping mapperForClassElements:[DCReleaseArtist class] forAttribute:@"artists" onClass:[self class]];
    DCArrayMapping *extraArtistMapper = [DCArrayMapping mapperForClassElements:[DCReleaseArtist class] forAttribute:@"extraartists" onClass:[self class]];
    DCArrayMapping *labelMapper = [DCArrayMapping mapperForClassElements:[DCReleaseLabel class] forAttribute:@"labels" onClass:[self class]];
    DCArrayMapping *companyMapper = [DCArrayMapping mapperForClassElements:[DCReleaseLabel class] forAttribute:@"companies" onClass:[self class]];
    DCArrayMapping *videoMapper = [DCArrayMapping mapperForClassElements:[DCVideo class] forAttribute:@"videos" onClass:[self class]];
    DCArrayMapping *formatMapper = [DCArrayMapping mapperForClassElements:[DCReleaseFormat class] forAttribute:@"formats" onClass:[self class]];
    DCArrayMapping *imageMapper = [DCArrayMapping mapperForClassElements:[DCImage class] forAttribute:@"images" onClass:[self class]];
    DCArrayMapping *identifierMapper = [DCArrayMapping mapperForClassElements:[DCReleaseIdentifier class] forAttribute:@"formats" onClass:[self class]];
    DCArrayMapping *trackMapper = [DCArrayMapping mapperForClassElements:[DCReleaseTrack class] forAttribute:@"tracklist" onClass:[self class]];
    
    //community mapping
    DCArrayMapping *contributorMapper = [DCArrayMapping mapperForClassElements:[DCUser class] forAttribute:@"contributors" onClass:[DCCommunity class]];
    
    
    
    DCParserConfiguration *config = [DCParserConfiguration configuration];
    [config addArrayMapper:artistMapper];
    [config addArrayMapper:extraArtistMapper];
    [config addArrayMapper:labelMapper];
    [config addArrayMapper:companyMapper];
    [config addArrayMapper:videoMapper];
    [config addArrayMapper:formatMapper];
    [config addArrayMapper:imageMapper];
    [config addArrayMapper:identifierMapper];
    [config addArrayMapper:trackMapper];
    [config addArrayMapper:contributorMapper];
    
    DCKeyValueObjectMapping *parser = [DCKeyValueObjectMapping mapperForClass:[self class] andConfiguration:config];
    self = [parser parseDictionary:dictionary];
    
    return self;
}



@end
