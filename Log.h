//
//  Log.h
//  logger
//
//  Created by John Lempka on 3/12/13.
//  Copyright (c) 2013 John Lempka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Log : NSObject

@property NSString *fileName;
@property NSString *fileContents;

-(id) initWithFileCalled:(NSString*)fileName;
-(NSArray*) getArrayForFileContents;

@end
