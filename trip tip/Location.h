//
//  Location.h
//  trip tip
//
//  Created by Ryan Kung on 10/9/12.
//  Copyright (c) 2012 Douban Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Location : NSManagedObject

@property (nonatomic, retain) NSString * id;
@property (nonatomic, retain) NSString * country;
@property (nonatomic, retain) NSString * region;
@property (nonatomic, retain) NSString * city;
@property (nonatomic, retain) NSString * postalcode;
@property (nonatomic, retain) NSString * latitude;
@property (nonatomic, retain) NSString * longitude;
@property (nonatomic, retain) NSString * metrocode;
@property (nonatomic, retain) NSString * areacode;

@end
