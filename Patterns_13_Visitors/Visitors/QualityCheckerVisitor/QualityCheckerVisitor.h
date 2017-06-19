//
//  QualityCheckerVisitor.h
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
#import "Warehouse.h"

// Класс визитер - который оценивает качество товара

@interface QualityCheckerVisitor : NSObject  <BasicVisitor>

@end
