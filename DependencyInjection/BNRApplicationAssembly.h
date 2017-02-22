//
//  BNRApplicationAssembly.h
//  DependencyInjection
//
//  Created by Marsel Tzatzo on 06/02/2017.
//  Copyright © 2017 Marsel Tzatzo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TyphoonAssembly.h"

@class BNRItemsTableViewController;

@interface BNRApplicationAssembly : TyphoonAssembly

- (BNRItemsTableViewController *)itemsViewController;

@end
