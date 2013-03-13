//
//  loggerTableViewViewController.m
//  logger
//
//  Created by John Lempka on 3/13/13.
//  Copyright (c) 2013 John Lempka. All rights reserved.
//

#import "LogTableViewController.h"
#import "Log.h"

@implementation LogTableViewController

- (void)setDataSourceArray:(NSArray*)dataArray
{
    _theArray = [dataArray copy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0)
    {
        return [_theArray count];
    }
    else
    {
        return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"LogCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:@"LogCell"];
    }
    
    cell.textLabel.text = [_theArray objectAtIndex:indexPath.row];
    cell.textLabel.numberOfLines = 1;
    [cell.textLabel setFont:[UIFont systemFontOfSize:(14)]];
    return cell;
}

@end

