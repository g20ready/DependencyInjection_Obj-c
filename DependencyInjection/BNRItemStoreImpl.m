//
//  BNRItemStoreImpl.m
//  DependencyInjection
//
//  Created by Marsel Tzatzo on 06/02/2017.
//  Copyright © 2017 Marsel Tzatzo. All rights reserved.
//

#import "BNRItemStoreImpl.h"


@interface BNRItemStoreImpl ()


/* ============================================================ Properties ========================================================= */
@property (nonatomic) NSMutableArray<BNRItem*> *privateItems;

@end

@implementation BNRItemStoreImpl

@synthesize allItems;

#pragma mark Instantiation

- (instancetype)init {
    [NSException raise:@"Singleton" format:@"Use + [BNRItemStore sharedStore]"];
    return nil;
}

- (instancetype)initPrivte {
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}


#pragma mark Protocol Methods

+ (instancetype)sharedStore {
    static BNRItemStoreImpl *sharedStore;
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivte];
        for (int i = 0; i < 5; i++) {
            [sharedStore createItem];
        }
    }
    
    return sharedStore;
}

- (NSArray<BNRItem *> *)allItems {
    return [self.privateItems copy];
}

- (BNRItem *) createItem {
    BNRItem *item = [BNRItem randomItem];
    [self.privateItems addObject:item];
    return item;
}

@end

