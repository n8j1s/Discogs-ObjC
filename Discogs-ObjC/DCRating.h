//
//  DCRating.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCRating : NSObject

@property (readonly) NSUInteger count;
@property (readonly) NSNumber *average;

@end
