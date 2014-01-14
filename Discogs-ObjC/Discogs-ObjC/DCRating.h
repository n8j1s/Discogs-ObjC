//
//  DCRating.h
//  Discogs-ObjC
//
//  Created by admin on 1/14/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCRating : NSObject

@property (readonly) NSUInteger count;
@property (readonly) NSDecimal *average;

@end
