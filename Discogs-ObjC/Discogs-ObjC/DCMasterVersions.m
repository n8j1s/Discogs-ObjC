//
//  DCMasterVersions.m
//  Discogs-ObjC
//
//  Created by admin on 1/10/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCMasterVersions.h"
#import "DCKeyValueObjectMapping.h"
#import "DCArrayMapping.h"
#import "DCParserConfiguration.h"
#import "DCObjectMapping.h"

#import "DCMasterVersion.h"
#import "DCImage.h"

@implementation DCMasterVersions

-(id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super initWithDictionary:dictionary];
    if (!self)
        return nil;
    
    DCObjectMapping *versionToReleaseMapping = [DCObjectMapping mapKeyPath:@"versions" toAttribute:@"releases" onClass:[self class]];
    DCArrayMapping *versionMapper = [DCArrayMapping mapperForClassElements:[DCMasterVersion class] forAttribute:@"releases" onClass:[self class]];
    
    DCParserConfiguration *config = [DCParserConfiguration configuration];
    [config addObjectMapping:versionToReleaseMapping];
    [config addArrayMapper:versionMapper];
    
    DCKeyValueObjectMapping *parser = [DCKeyValueObjectMapping mapperForClass:[self class] andConfiguration:config];
    self = [parser parseDictionary:dictionary];
    
    return self;
    
}

@end
