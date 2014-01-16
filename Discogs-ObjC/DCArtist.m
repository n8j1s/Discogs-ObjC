//
//  DCArtist.m
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCArtist.h"
#import "DCArtistAlias.h"
#import "DCImage.h"


#import "DCKeyValueObjectMapping.h"
#import "DCArrayMapping.h"
#import "DCParserConfiguration.h"

@implementation DCArtist

-(id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super initWithDictionary:dictionary];
    if (!self)
        return nil;
    
    DCArrayMapping *aliasMapper = [DCArrayMapping mapperForClassElements:[DCArtistAlias class] forAttribute:@"aliases" onClass:[self class]];
    DCArrayMapping *imageMapper = [DCArrayMapping mapperForClassElements:[DCImage class] forAttribute:@"images" onClass:[self class]];
    
    DCParserConfiguration *config = [DCParserConfiguration configuration];
    [config addArrayMapper:aliasMapper];
    [config addArrayMapper:imageMapper];
    
    DCKeyValueObjectMapping *parser = [DCKeyValueObjectMapping mapperForClass:[self class] andConfiguration:config];
    self = [parser parseDictionary:dictionary];
    
    
    return self;
}

@end
