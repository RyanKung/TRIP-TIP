//
//  fileHandle.h
//  TRIP TIP
//
//  Created by Ryan Kung on 31/8/12.
//  Copyright (c) 2012 Douban Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface fileHandle : NSObject
{
    

}
-(NSString *) tempPath;
-(NSString *) documentsPath;
-(BOOL) fileExist:(NSString*) filename;
-(NSString *) readFromFile:(NSString *) filePath;
-(void) writeToFile:(NSString *) text
       withFileName:(NSString *) filePath;
@end
