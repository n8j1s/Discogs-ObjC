//
//  DCMaster.m
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCMaster.h"
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

@implementation DCMaster


-(id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super initWithDictionary:dictionary];
    if (!self)
        return nil;
    
    DCArrayMapping *artistMapper = [DCArrayMapping mapperForClassElements:[DCReleaseArtist class] forAttribute:@"artists" onClass:[self class]];
    DCArrayMapping *videoMapper = [DCArrayMapping mapperForClassElements:[DCVideo class] forAttribute:@"videos" onClass:[self class]];
    DCArrayMapping *imageMapper = [DCArrayMapping mapperForClassElements:[DCImage class] forAttribute:@"images" onClass:[self class]];
    DCArrayMapping *trackMapper = [DCArrayMapping mapperForClassElements:[DCReleaseTrack class] forAttribute:@"tracklist" onClass:[self class]];
    
    DCParserConfiguration *config = [DCParserConfiguration configuration];
    [config addArrayMapper:artistMapper];
    [config addArrayMapper:videoMapper];
    [config addArrayMapper:imageMapper];
    [config addArrayMapper:trackMapper];
    
    DCKeyValueObjectMapping *parser = [DCKeyValueObjectMapping mapperForClass:[self class] andConfiguration:config];
    self = [parser parseDictionary:dictionary];
    
    return self;
}


@end
