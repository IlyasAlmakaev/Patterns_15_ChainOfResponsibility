//
//  ToysHandler.m
//  Patterns_15_ChainOfResponsibility
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "ToysHandler.h"
#import "Toy.h"

@implementation ToysHandler

- (void)handleItem:(BasicItem *)item {
    if ([item isKindOfClass:[Toy class]]) {
        NSLog(@"Toy found. Handling");
    } else {
        NSLog(@"Toy not found. Handling using next handler");
        [self.nextHandler handleItem:item];
    }
}

@end
