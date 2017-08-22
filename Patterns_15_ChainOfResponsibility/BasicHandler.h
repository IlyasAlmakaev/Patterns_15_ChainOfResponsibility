//
//  BasicHandler.h
//  Patterns_15_ChainOfResponsibility
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicItem.h"

@interface BasicHandler : NSObject

@property (nonatomic, strong) BasicHandler *nextHandler;
- (void)handleItem:(BasicItem *)item;

@end
