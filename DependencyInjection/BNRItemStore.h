//
//  BNRItemStore.h
//  DependencyInjection
//
//  Created by Marsel Tzatzo on 06/02/2017.
//  Copyright © 2017 Marsel Tzatzo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@protocol BNRItemStore <NSObject>

/* ============================================================== Properties ============================================================== */

@property (nonatomic, retain) NSArray *allItems;

/* ============================================================== Singleton =============================================================== */

+ (id) sharedStore;

/* =========================================================== Utility Methods ============================================================ */

- (BNRItem *) createItem;
- (NSArray<BNRItem *> *) allItems;


@end
