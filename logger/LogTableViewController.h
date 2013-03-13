
//
//  loggerTableViewViewController.h
//  logger
//
//  Created by John Lempka on 3/13/13.
//  Copyright (c) 2013 John Lempka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *theArray;

-(void)setDataSourceArray:(NSArray*)dataArray;

@end
