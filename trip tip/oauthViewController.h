//
//  oauthViewController.h
//  TRIP TIP
//
//  Created by Ryan Kung on 22/8/12.
//  Copyright (c) 2012 Douban Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class mainTabViewController, fileHandle;
@interface oauthViewController : UIViewController 
<NSURLConnectionDelegate, UIWebViewDelegate>
{
    IBOutlet UIWebView *oauthWebView;
    mainTabViewController *mainTabView;
    fileHandle *fHandle;
    NSString *oauthDataFile;
    NSDictionary *oauthData;
}
@property (nonatomic, retain) UIWebView *oauthWebView;
@end
