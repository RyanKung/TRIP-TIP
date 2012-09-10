//
//  footprintViewController.h
//  TRIP TIP
//
//  Created by Ryan Kung on 9/9/12.
//  Copyright (c) 2012 Douban Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface footprintViewController : UIViewController
{
    IBOutlet MKMapView *mapView;
}

@property (nonatomic, retain) MKMapView *mapView;
@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;
@end
