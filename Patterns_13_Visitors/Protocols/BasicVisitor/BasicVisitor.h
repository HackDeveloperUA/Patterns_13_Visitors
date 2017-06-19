//
//  BasicVisitor.h
//  Patterns_13_Visitors
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BasicVisitor <NSObject>

-(void) visit:(id)anObject;

@end
