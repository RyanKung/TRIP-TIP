//
//  firstViewController.h
//  TRIP TIP
//
//  Created by Ryan Kung on 22/8/12.
//  Copyright (c) 2012 Douban Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
@class fileHandle;
@interface firstViewController : UIViewController
{
    fileHandle *fhandle;
}
    -(IBAction) btnClicked:(id) loginBtn;
@end

