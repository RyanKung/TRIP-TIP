//
//  fileHandle.m
//  TRIP TIP
//
//  Created by Ryan Kung on 31/8/12.
//  Copyright (c) 2012 Douban Inc. All rights reserved.
//

#import "fileHandle.h"

@implementation fileHandle
//---finds the path to the application’s Documents folder---
-(NSString *) documentsPath {
    NSLog(@"%@",@"in");
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [paths objectAtIndex:0];
    return documentsDir;
}

-(NSString *) tempPath{
    return NSTemporaryDirectory();
}

-(BOOL) fileExist:(NSString*) filename{
    return[[NSFileManager defaultManager] fileExistsAtPath:filename];
}

//---write content into a specified file path---
-(void) writeToFile:(NSString *) text
            withFileName:(NSString *) filePath {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    NSLog(@"%@",filePath);
    [array addObject:text];
    [array writeToFile:filePath atomically:YES];
}

//---read content from a specified file path---
-(NSString *) readFromFile:(NSString *) filePath {
    //—-check if file exists—-
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        NSArray *array =
        [[NSArray alloc] initWithContentsOfFile: filePath];
        NSString *data =
        [NSString stringWithFormat:@"%@",
         [array objectAtIndex:0]];
        return data;
    }
    else
        return nil;
}
@end
