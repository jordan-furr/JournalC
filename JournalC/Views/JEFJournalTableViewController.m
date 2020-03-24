//
//  JEFJournalTableViewController.m
//  JournalC
//
//  Created by Jordan Furr on 3/24/20.
//  Copyright © 2020 Jordan Furr. All rights reserved.
//

#import "JEFJournalTableViewController.h"
#import "JEFEntryController.h"

@interface JEFJournalTableViewController ()

@end

@implementation JEFJournalTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return JEFEntryController.shared.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    JEFEntry *entry = JEFEntryController.shared.entries[indexPath.row];
    cell.textLabel.text = entry.title;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
