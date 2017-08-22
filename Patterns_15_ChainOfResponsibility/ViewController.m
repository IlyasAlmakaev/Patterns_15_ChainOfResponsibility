//
//  ViewController.m
//  Patterns_15_ChainOfResponsibility
//
//  Created by Ильяс on 22.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "ViewController.h"
#import "ToysHandler.h"
#import "ElectronicsHandler.h"
#import "OtherItemsHandler.h"
#import "Toy.h"
#import "Electronics.h"
#import "Trash.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BasicHandler *toysHandler = [[ToysHandler alloc] init];
    BasicHandler *electronicsHandler = [[ElectronicsHandler alloc] init];
    BasicHandler *otherItemHandler = [[OtherItemsHandler alloc] init];
    
    electronicsHandler.nextHandler = otherItemHandler;
    toysHandler.nextHandler = electronicsHandler;
    
    BasicItem *toy = [[Toy alloc] init];
    BasicItem *electronic = [[Electronics alloc] init];
    BasicItem *trash = [[Trash alloc] init];
    
    [toysHandler handleItem:toy];
    [toysHandler handleItem:electronic];
    [toysHandler handleItem:trash];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
