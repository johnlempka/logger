//
//  loggerViewController.h
//  logger
//
//  Created by John Lempka on 2/10/13.
//  Copyright (c) 2013 John Lempka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogTextViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *theTextView;
@property (strong, nonatomic) NSArray *theArray;

@end
