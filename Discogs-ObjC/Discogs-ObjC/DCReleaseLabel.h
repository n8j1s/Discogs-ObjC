//
//  DCReleaseLabel.h
//  Discogs-ObjC
//
//  Created by admin on 1/9/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCReleaseLabel : DCBaseObject

@property (readonly) NSString *entity_type;
@property (readonly) NSString *catno;
@property (readonly) NSString *entity_type_name;
@property (readonly) NSString *name;
@property (readonly) NSString *resource_url;


@end
