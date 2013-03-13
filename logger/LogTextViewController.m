//
//  loggerViewController.m
//  logger
//
//  Created by John Lempka on 2/10/13.
//  Copyright (c) 2013 John Lempka. All rights reserved.
//

#import "Log.h"
#import "LogTextViewController.h"
#import "LogTableViewController.h"


@implementation LogTextViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Log *theLog = [[Log alloc] initWithFileCalled:@"log.txt"];
    
    _theArray = [theLog getArrayForFileContents];
    
    [self setTitle:[NSString stringWithFormat:@"Number of rows: %i", [_theArray count]]];
    
    _theTextView.text = theLog.fileContents;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"ViewAsTable"])
    {
        LogTableViewController *vc = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        [vc setDataSourceArray:_theArray];
    }
}

@end
