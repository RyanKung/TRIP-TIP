//
//  locationSelectorTableViewController.h
//  trip tip
//
//  Created by Ryan Kung on 11/9/12.
//  Copyright (c) 2012 Douban Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface locationSelectorTableViewController : UITableViewController
<UITableViewDelegate, UITableViewDelegate>
{
    NSArray *location;

}
@property (nonatomic, strong) NSArray *location;
@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;
@end
