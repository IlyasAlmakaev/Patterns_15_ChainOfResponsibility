//
//  ElectronicsHandler.m
//  Patterns_15_ChainOfResponsibility
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "ElectronicsHandler.h"
#import "Electronics.h"

@implementation ElectronicsHandler

- (void)handleItem:(BasicItem *)item {
    if ([item isKindOfClass:[Electronics class]]) {
        NSLog(@"Electronics found. Handling");
    } else {
        NSLog(@"Electronics not found. Handling using next handler");
        [self.nextHandler handleItem:item];
    }
}

@end
