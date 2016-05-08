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
@property NSManagedObjectContext *manageObjectContext;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.delegate = self;
    _tableView.dataSource =self;
    _tableView.allowsMultipleSelectionDuringEditing = NO;
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
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    request.sortDescriptors = @[sort];
     _manageObjectContext = APPDELEGATE.managedObjectContext;
    
     _fetchedResultsController =[[NSFetchedResultsController alloc] initWithFetchRequest:request managedObjectContext: _manageObjectContext sectionNameKeyPath:nil cacheName:nil];
     _fetchedResultsController.delegate = self;
    NSError *error = nil;
    if (![_fetchedResultsController performFetch:&error]) {
        NSLog(@"Failed to initialize FetchedResultsController: %@\n%@", [error localizedDescription], [error userInfo]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Insert
- (IBAction)clickedAdd:(id)sender {
    if(self.textField.text != nil) {
        Device *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Device" inManagedObjectContext:_manageObjectContext];
        [newDevice setName:_textField.text];
        NSError *error = nil;
        if (![_manageObjectContext save:&error]) {
            NSLog(@"Unable to save managed object context.");
            NSLog(@"%@, %@", error, error.localizedDescription);
        }
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  _fetchedResultsController.fetchedObjects.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    cell = [ _tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //add code here for when you hit delete
    }
}
#pragma mark - NSFetchedResultsControllerDelegate
-(void) controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath {
    NSLog(@"Change type: %lu", type);
    switch(type) {
        case NSFetchedResultsChangeInsert: break; // 1
        case NSFetchedResultsChangeDelete: break; // 2
        case NSFetchedResultsChangeMove: break; // 3
        case NSFetchedResultsChangeUpdate: break; // 4
    }
}
- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
    [_tableView reloadData];
}
@end
