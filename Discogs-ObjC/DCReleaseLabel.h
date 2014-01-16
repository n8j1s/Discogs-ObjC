//
//  DCReleaseLabel.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCBaseObject.h"

@interface DCReleaseLabel : DCBaseObject

@property (readonly) NSString *entity_type;
@property (readonly) NSString *catno;
@property (readonly) NSString *entity_type_name;
@property (readonly) NSString *name;
@property (readonly) NSString *resource_url;


@end
