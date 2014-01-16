//
//  DCBaseObject.m
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCBaseObject.h"

@implementation DCBaseObject


+(id)objectWithDictionary:(NSDictionary *)dictionary
{
    id obj = [[DCBaseObject alloc] initWithDictionary:dictionary];
    return obj;
}


-(id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    /*if (self)
    {
        [self setValuesForKeysWithDictionary:dictionary];
    }*/
    return self;
}

@end
