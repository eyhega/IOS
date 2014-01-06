//
//  ZZZRegion.m
//  MasterDetailApp
//
//  Created by Gaetan EYHERAMONO on 12/16/13.
//  Copyright (c) 2013 Gaetan EYHERAMONO. All rights reserved.
//

#import "ZZZRegion.h"

@implementation ZZZRegion

-(id)initWithNom:(NSString*)nom andDescription:(NSString*)description
{
    self = [super init];
    
    if(self)
    {
        _nom = [nom copy];
        _description = [description copy];
    }
    
    return self;
}

+(ZZZRegion*)createRegionWithNom:(NSString*)nom andDescription:(NSString*)description
{
    return [[[self alloc] initWithNom:nom andDescription:description] autorelease];
}

@end
