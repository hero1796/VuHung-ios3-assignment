//
//  Device+CoreDataProperties.h
//  10_1
//
//  Created by Hung Ga 123 on 5/7/16.
//  Copyright © 2016 Hung Ga. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Device.h"

NS_ASSUME_NONNULL_BEGIN

@interface Device (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;

@end

NS_ASSUME_NONNULL_END
