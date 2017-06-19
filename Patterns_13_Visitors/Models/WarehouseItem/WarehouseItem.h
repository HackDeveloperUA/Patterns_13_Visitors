//
//  WarehouseItem.h
//  Patterns_13_Visitors
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WarehouseItem : NSObject


@property (nonatomic, strong) NSString *name;
@property (nonatomic) BOOL isBroken;
@property (nonatomic) int price;

-(id) initWithArgs:(NSString *)aName andQuality:(BOOL) isBrokenState andPrice:(int)aPrice;

@end
