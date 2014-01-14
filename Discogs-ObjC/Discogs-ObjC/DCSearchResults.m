//
//  DCSearchResults.m
//  Discogs-ObjC
//
//  Created by admin on 1/10/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCSearchResults.h"
#import "DCKeyValueObjectMapping.h"
#import "DCArrayMapping.h"
#import "DCParserConfiguration.h"
#import "DCSearchResult.h"

@implementation DCSearchResults

-(id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super initWithDictionary:dictionary];
    if (!self)
        return nil;
    
    DCArrayMapping *resultMapper = [DCArrayMapping mapperForClassElements:[DCSearchResult class] forAttribute:@"results" onClass:[self class]];
    
    DCParserConfiguration *config = [DCParserConfiguration configuration];
    [config addArrayMapper:resultMapper];
    
    DCKeyValueObjectMapping *parser = [DCKeyValueObjectMapping mapperForClass:[self class] andConfiguration:config];
    self = [parser parseDictionary:dictionary];
    
    return self;
}


@end
