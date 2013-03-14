//
//  Log.m
//  logger
//
//  Created by John Lempka on 3/12/13.
//  Copyright (c) 2013 John Lempka. All rights reserved.
//

#import "Log.h"
#import "loggerAppDelegate.h"

@implementation Log

- (id) initWithFileCalled:(NSString *)fileName
{
    self = [super init];
    
    if (self)
    {
        NSError *error = nil;
        _fileName = fileName;
        
        NSString* path = [[NSBundle mainBundle] pathForResource:fileName
                                                         ofType:nil];
        
        _fileContents = [NSString stringWithContentsOfFile:path
                                                      encoding:NSUTF8StringEncoding
                                                         error:&error];
        
        NSRegularExpression *date = [NSRegularExpression regularExpressionWithPattern:<#(NSString *)#> options:<#(NSRegularExpressionOptions)#> error:<#(NSError *__autoreleasing *)#>]
        
        if (error)
        {
            loggerAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
            [appDelegate handleError:error];
        }
    }
    return self;
}

-(NSArray*) getArrayForFileContents
{
    NSCharacterSet *newlines = [NSCharacterSet newlineCharacterSet];
    NSArray *contentsArray = [_fileContents componentsSeparatedByCharactersInSet:newlines];
    return contentsArray;
}

@end
