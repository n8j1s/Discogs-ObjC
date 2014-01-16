//
//  DCMasterVersions.h
//  Discogs-ObjC
//
//  Created by n8j1s on 1/9/14.
//  Copyright (c) 2014 n8j1s. All rights reserved.
//

#import "DCPagination.h"
#import "DCBaseObject.h"
@interface DCMasterVersions : DCBaseObject

@property (readonly) DCPagination *pagination;
@property (readonly) NSArray *versions;



@end
