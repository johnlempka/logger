//
//  loggerAppDelegate.h
//  logger
//
//  Created by John Lempka on 2/10/13.
//  Copyright (c) 2013 John Lempka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loggerAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(void)handleError:(NSError*)error;

@end
