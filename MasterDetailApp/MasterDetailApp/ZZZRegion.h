//
//  ZZZRegion.h
//  MasterDetailApp
//
//  Created by Gaetan EYHERAMONO on 12/16/13.
//  Copyright (c) 2013 Gaetan EYHERAMONO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZZZRegion : NSObject

@property (strong, nonatomic) NSString * nom;
@property (strong, nonatomic) NSString * description;

-(id)initWithNom:(NSString*)nom andDescription:(NSString*)description;
+(ZZZRegion*)createRegionWithNom:(NSString*)nom andDescription:(NSString*)description;

@end
