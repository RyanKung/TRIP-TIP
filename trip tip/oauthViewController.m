//
//  oauthViewController.m
//  TRIP TIP
//
//  Created by Ryan Kung on 22/8/12.
//  Copyright (c) 2012 Douban Inc. All rights reserved.
//

#import "oauthViewController.h"
#import "sinaWeiboOauth2Config.h"
#import "SBJson.h"
#import "mainTabViewController.h"



@implementation oauthViewController
@synthesize oauthWebView;

- (void)viewDidLoad
{
    oauthDataFile = [NSTemporaryDirectory() stringByAppendingPathComponent:@"token.data"];
    NSString *url = [[NSString alloc] initWithFormat: @"%s?client_id=%s&redirect_uri=%s&display=mobile", WB_OAUTH_API, WB_API_KEY, WB_CALLBACK_URL];
    NSURLRequest *oauthUrl = [NSURLRequest requestWithURL:[NSURL URLWithString: url]]; 
    NSLog(@"%@",oauthUrl);
    [oauthWebView loadRequest:oauthUrl];
    oauthWebView.delegate = self;
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *currentURL = [webView stringByEvaluatingJavaScriptFromString:@"window.location['host']"];
    if ([currentURL isEqualToString:@"www.pintov.com"]) {
        NSString *res = [webView stringByEvaluatingJavaScriptFromString:@"document.body.innerHTML"];
        NSDictionary *oauthRes = [res JSONValue];
        [oauthRes writeToFile:oauthDataFile atomically:YES];
        [self performSegueWithIdentifier:@"afterLogin" sender:self];
    }
}
@end
