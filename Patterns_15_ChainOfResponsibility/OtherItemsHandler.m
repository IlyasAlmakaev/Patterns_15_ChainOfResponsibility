//
//  OtherItemsHandler.m
//  Patterns_15_ChainOfResponsibility
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "OtherItemsHandler.h"

@implementation OtherItemsHandler

- (void)handleItem:(BasicItem *)item {
    NSLog(@"Found undefined item. Destroying");
}

@end
