//
//  BNRItemsViewControllerTableViewController.h
//  DependencyInjection
//
//  Created by Marsel Tzatzo on 06/02/2017.
//  Copyright © 2017 Marsel Tzatzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BNRItem.h"
#import "BNRItemStore.h"


@protocol BNRItemStore;

@interface BNRItemsTableViewController : UITableViewController

/* ===================================================== Properties ===================================================================== */
@property (nonatomic, strong) id <BNRItemStore> itemStore;

@end
