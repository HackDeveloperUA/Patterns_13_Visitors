//
//  Warehouse.h
//  Patterns_13_Visitors
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

// Protocols
#import "BasicVisitor.h"

// Models
#import "WarehouseItem.h"

@interface Warehouse : NSObject

@property (nonatomic, strong) NSMutableArray *itemsArray;

-(void) addItem:(WarehouseItem *) anItem;
-(void) accept:(id<BasicVisitor>) visitor;

@end
