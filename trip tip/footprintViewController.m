//
//  footprintViewController.m
//  TRIP TIP
//
//  Created by Ryan Kung on 9/9/12.
//  Copyright (c) 2012 Douban Inc. All rights reserved.
//

#import "footprintViewController.h"
#import "sqlite3.h"
#import "AppDelegate.h"

@implementation footprintViewController
@synthesize mapView;
@synthesize managedObjectContext;
- (void)viewDidLoad
{
    [super viewDidLoad];
    mapView.showsUserLocation = YES;
    sqlite3 *db;
    NSString *dbFile = [[NSBundle mainBundle] pathForResource:@"location" ofType:@"sqlite3"];
    NSLog(@"%@",dbFile);
    if ([[NSFileManager defaultManager] fileExistsAtPath: dbFile]) {
        sqlite3_open([dbFile UTF8String], &db);
        NSLog(@"open DB Success");
    }
    sqlite3_close(db);
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
@end
