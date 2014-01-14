//
//  DCCommunity.h
//  Discogs-ObjC
//
//  Created by admin on 1/10/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
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
