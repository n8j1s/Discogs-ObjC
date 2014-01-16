//
//  DCLabel.m
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCLabel.h"
#import "DCImage.h"
#import "DCSubLabel.h"

#import "DCKeyValueObjectMapping.h"
#import "DCArrayMapping.h"
#import "DCParserConfiguration.h"

@implementation DCLabel


-(id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super initWithDictionary:dictionary];
    if (!self)
        return nil;
    
    DCArrayMapping *imageMapper = [DCArrayMapping mapperForClassElements:[DCImage class] forAttribute:@"images" onClass:[self class]];
    DCArrayMapping *sublabelMapper = [DCArrayMapping mapperForClassElements:[DCSubLabel class] forAttribute:@"sublabels" onClass:[self class]];
    
    DCParserConfiguration *config = [DCParserConfiguration configuration];
    [config addArrayMapper:imageMapper];
    [config addArrayMapper:sublabelMapper];
    
    DCKeyValueObjectMapping *parser = [DCKeyValueObjectMapping mapperForClass:[self class] andConfiguration:config];
    self = [parser parseDictionary:dictionary];
    
    return self;
}

@end
