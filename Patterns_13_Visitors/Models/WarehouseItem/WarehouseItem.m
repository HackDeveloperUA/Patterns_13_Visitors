//
//  WarehouseItem.m
//  Patterns_13_Visitors
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "WarehouseItem.h"

@implementation WarehouseItem

-(id) initWithArgs:(NSString *)aName andQuality:(BOOL)isBrokenState andPrice:(int)aPrice
{
    self = [super init];
    self.name = aName; self.isBroken = isBrokenState; self.price = aPrice;
    return self;
}


@end
