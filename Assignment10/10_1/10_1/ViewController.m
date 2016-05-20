//
//  ViewController.m
//  10_1
//
//  Created by Hung Ga 123 on 5/7/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//

#import "ViewController.h"
#import <CoreData/CoreData.h>
#import "Device.h"
#import "AppDelegate.h"
@interface ViewController () <NSFetchedResultsControllerDelegate>
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property BOOL isUpdating;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.allowsMultipleSelectionDuringEditing = NO;
    _tableView.tableFooterView = [[UIView alloc] init];
    _isUpdating = NO;
    // Do any additional setup after loading the view, typically from a nib.
#pragma mark - Paths to sqlite file
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSArray *cachePaths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *documentDirectoryPath = [documentPaths objectAtIndex:0];
    NSLog(@"%@", documentDirectoryPath);
    NSString *cacheDirectoryPath = [cachePaths objectAtIndex:0];
    NSLog(@"%@", cacheDirectoryPath);
    NSString *temporyDirectoryPath = NSTemporaryDirectory();
    NSLog(@"%@", temporyDirectoryPath);
#pragma mark - FetchedResult
    NSFetchRequest *request =  [NSFetchRequest fetchRequestWithEntityName:@"Device"];
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"name"
                                                           ascending:YES];
    request.sortDescriptors = @[sort];
    _fetchedResultsController =[[NSFetchedResultsController alloc] initWithFetchRequest:request
                                                                   managedObjectContext: APPDELEGATE.managedObjectContext sectionNameKeyPath:nil
                                                                              cacheName:nil];
    _fetchedResultsController.delegate = self;
    NSError *error = nil;
    if (![_fetchedResultsController performFetch:&error]) {
        NSLog(@"Failed to initialize FetchedResultsController: %@\n%@", error.localizedDescription, error.userInfo);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - ADD , Update click
- (IBAction)clickedAdd:(id)sender {
    if(!_isUpdating) {
        if(_textField.text.length > 0) {
            Device *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Device"
                                                              inManagedObjectContext:APPDELEGATE.managedObjectContext];
            [newDevice setName:_textField.text];
            NSError *error = nil;
            if (![APPDELEGATE.managedObjectContext save:&error]) {
                NSLog(@"Unable to save managed object context.");
                NSLog(@"%@\n%@", error, error.localizedDescription);
            }
            _textField.text = @"";
        }
    } else {
        Device *devideUpdate = [_fetchedResultsController.fetchedObjects objectAtIndex:_tableView.indexPathForSelectedRow.row];
        if(_textField.text.length > 0) {
            devideUpdate.name = _textField.text;
            NSError *error = nil;
            if(![APPDELEGATE.managedObjectContext save:&error]) {
                NSLog(@"%@", error);
            }
            _textField.text = @"";
            [_addButton setTitle:@"Add" forState:UIControlStateNormal];
            _isUpdating = NO;
        }
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  _fetchedResultsController.fetchedObjects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    cell = [ _tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    UILabel *lbl = [cell.contentView viewWithTag:100];
    lbl.text = [[_fetchedResultsController.fetchedObjects objectAtIndex:indexPath.row] name];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    _textField.text = [[_fetchedResultsController.fetchedObjects objectAtIndex:indexPath.row] name];
    [_addButton setTitle:@"Update" forState:UIControlStateNormal];
    _isUpdating = YES;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //add code here for when you hit delete
        [APPDELEGATE.managedObjectContext deleteObject:[_fetchedResultsController.fetchedObjects objectAtIndex:indexPath.row]];
        NSError *error;
        if(![APPDELEGATE.managedObjectContext save:&error]) {
            NSLog(@"%@", error);
        }
        _textField.text = @"";
        [_addButton setTitle:@"Add" forState:UIControlStateNormal];
        _isUpdating = NO;
    }
}

#pragma mark - NSFetchedResultsControllerDelegate
-(void)controllerWillChangeContent:(NSFetchedResultsController *)controller {
    [_tableView beginUpdates];
}

-(void) controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath {
    NSLog(@"Change type: %lu", type);
    switch(type) {
        case NSFetchedResultsChangeInsert:
        {
            [_tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            NSLog(@"%@", newIndexPath);

            break; // 1
        }
        case NSFetchedResultsChangeDelete:
        {
            [_tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
            NSLog(@"%@", indexPath);
            break; // 2
        }
        case NSFetchedResultsChangeMove:
        {
            NSLog(@"index : %@", indexPath);
            NSLog(@"newIndex : %@", newIndexPath);
            
            NSMutableArray *arr = [[NSMutableArray alloc] init];
            
            if(indexPath.row < newIndexPath.row) {
                for(NSInteger i= indexPath.row; i<= newIndexPath.row; i++) {
                    NSUInteger inter[] = {0,i};
                    NSIndexPath *indexPath = [NSIndexPath indexPathWithIndexes:inter length:2];
                    [arr addObject:indexPath];
                }
            } else if(indexPath.row > newIndexPath.row) {
                for(NSInteger i= newIndexPath.row; i<= indexPath.row; i++) {
                    NSUInteger inter[] = {0,i};
                    NSIndexPath *indexPath = [NSIndexPath indexPathWithIndexes:inter length:2];
                    [arr addObject:indexPath];
                }
            } else if(indexPath.row == newIndexPath.row) {
                NSUInteger inter[] = {0,indexPath.row};
                NSIndexPath *indexPath = [NSIndexPath indexPathWithIndexes:inter length:2];
                [arr addObject:indexPath];
            }
            for (NSIndexPath *i in arr) {
                [_tableView reloadRowsAtIndexPaths:@[i] withRowAnimation:UITableViewRowAnimationAutomatic];
            }
            break; // 3
        }
        case NSFetchedResultsChangeUpdate:
        {
            break; // 4
        }
        default:
            break;
    }
}
- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
    //[_tableView reloadData];
    [_tableView endUpdates];
}
@end
