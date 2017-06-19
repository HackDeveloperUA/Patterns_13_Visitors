//
//  QualityCheckerVisitor.m
//  Patterns_13_Visitors
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "QualityCheckerVisitor.h"

@implementation QualityCheckerVisitor


- (void) visit:(id)anObject {

    // - Реакция если это товар
    if ([anObject isKindOfClass:[WarehouseItem class]])
    {
        if ([anObject isBroken])
        {
            NSLog(@"Item: %@ is broken", [anObject name]);
        }
        else
        {
            NSLog(@"Item: %@ is pretty cool!", [anObject name]);
        }
    }
    
    // - Реакция если это склад
    if ([anObject isKindOfClass:[Warehouse class]])
    {
        NSLog(@"Hmmm, nice warehouse!");
        return;
    }
}


@end
