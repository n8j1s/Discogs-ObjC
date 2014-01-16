//
//  DCCommunity.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCBaseObject.h"
#import "DCUser.h"
#import "DCRating.h"

@interface DCCommunity : NSObject

@property (readonly) NSString *have;
@property (readonly) NSString *want;
@property (readonly) DCRating *rating;
@property (readonly) DCUser *submitter;
@property (readonly) NSArray *contributors;

@end
