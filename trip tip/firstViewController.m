//
//  firstViewController.m
//  TRIP TIP
//
//  Created by Ryan Kung on 22/8/12.
//  Copyright (c) 2012 Douban Inc. All rights reserved.
//

#import "firstViewController.h"
#import "fileHandle.h"
@implementation firstViewController

-(IBAction) btnClicked:(id) loginBtn {
    if ([[NSFileManager defaultManager] fileExistsAtPath:[NSTemporaryDirectory() stringByAppendingPathComponent:@"token.data"]]) {
        [self performSegueWithIdentifier:@"hasToken" sender:nil];
    } else {
        [self performSegueWithIdentifier:@"toLogin" sender:nil];
    }
}
- (void)viewDidLoad
{
    fhandle = [fileHandle new];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

}

@end
