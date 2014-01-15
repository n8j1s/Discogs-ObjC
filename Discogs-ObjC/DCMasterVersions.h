//
//  DCMasterVersions.h
//  Discogs-ObjC
//
//  Created by admin on 1/10/14.
//  Copyright (c) 2014 Ogilvy. All rights reserved.
//

#import "DCPagination.h"
#import "DCBaseObject.h"
@interface DCMasterVersions : DCBaseObject

@property (readonly) DCPagination *pagination;
@property (readonly) NSArray *versions;



@end
