//
//  ViewController.m
//  Patterns_13_Visitors
//
//  Created by Uber on 19/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "ViewController.h"

// Models
#import "WarehouseItem.h"
#import "Warehouse.h"

// Visitors
#import "PriceCheckerVisitor.h"
#import "QualityCheckerVisitor.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    Warehouse* localWarehouse = [[Warehouse alloc] init];
    
    [localWarehouse addItem: [[WarehouseItem alloc] initWithArgs:@"Сумка"     andQuality:NO andPrice:25]   ];
    [localWarehouse addItem: [[WarehouseItem alloc] initWithArgs:@"Велосипед" andQuality:NO andPrice:32]   ];
    [localWarehouse addItem: [[WarehouseItem alloc] initWithArgs:@"Ноутбук"   andQuality:YES andPrice:45]  ];
    [localWarehouse addItem: [[WarehouseItem alloc] initWithArgs:@"Телефон"   andQuality:NO andPrice:33]   ];
    [localWarehouse addItem: [[WarehouseItem alloc] initWithArgs:@"iPad"      andQuality:NO andPrice:12]   ];
    [localWarehouse addItem: [[WarehouseItem alloc] initWithArgs:@"Samsung"   andQuality:YES andPrice:78]  ];
    [localWarehouse addItem: [[WarehouseItem alloc] initWithArgs:@"Folder"    andQuality:YES andPrice:34]  ];
    [localWarehouse addItem: [[WarehouseItem alloc] initWithArgs:@"Light"     andQuality:NO andPrice:51]   ];
    [localWarehouse addItem: [[WarehouseItem alloc] initWithArgs:@"Clock"     andQuality:NO andPrice:25]   ];
    
    PriceCheckerVisitor   *visitor        = [PriceCheckerVisitor new];
    QualityCheckerVisitor *qualityVisitor = [QualityCheckerVisitor new];
    
    [localWarehouse accept:visitor];
    [localWarehouse accept:qualityVisitor];

}





@end
