//
//  BNRApplicationAssembly.m
//  DependencyInjection
//
//  Created by Marsel Tzatzo on 06/02/2017.
//  Copyright © 2017 Marsel Tzatzo. All rights reserved.
//

#import "BNRApplicationAssembly.h"
#import "BNRItemsTableViewController.h"
#import "BNRItemStoreImpl.h"

@implementation BNRApplicationAssembly

#pragma mark - Bootstraping

- (BNRItemsTableViewController *)itemsViewController {
    return [TyphoonDefinition withClass:[BNRItemsTableViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(itemStore) with:[self store]];
    }];
}

- (id<BNRItemStore>) store {
    return [TyphoonDefinition withClass:[BNRItemStoreImpl class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(sharedStore) parameters:^(TyphoonMethod *initializer) {
            definition.scope = TyphoonScopeLazySingleton;
        }];
    }];
}
@end
