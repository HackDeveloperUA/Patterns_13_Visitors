//
//  PriceCheckerVisitor.m
//  Patterns_13_Visitors
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "PriceCheckerVisitor.h"

@implementation PriceCheckerVisitor


- (void) visit:(id) anObject {
    // Сюда выносим всю дополнительную логику

    // - Реакция если это товар
    if ([anObject isKindOfClass:[WarehouseItem class]])
    {
        NSLog(@"Item: %@ have price = %i", [anObject name], [anObject price]);
    }
    
    // - Реакция если это склад
    if ([anObject isKindOfClass:[Warehouse class]]) {
        NSLog(@"Hmmm, I don't know how much Warehouse costs!");
        return;
    }
}


@end
