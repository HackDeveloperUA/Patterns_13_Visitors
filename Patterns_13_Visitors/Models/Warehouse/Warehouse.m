//
//  Warehouse.m
//  Patterns_13_Visitors
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "Warehouse.h"

@implementation Warehouse

-(void) addItem:(WarehouseItem *)anItem {
    
    if (!_itemsArray)
        _itemsArray = [[NSMutableArray alloc] init];
    
    [_itemsArray addObject:anItem];
}

-(void) accept:(id<BasicVisitor>) visitor {
    
    [visitor visit:self];
   
    for (WarehouseItem *item in _itemsArray)
         [visitor visit:item];
}

@end
