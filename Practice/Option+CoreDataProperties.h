//
//  Option+CoreDataProperties.h
//  Practice
//
//  Created by 赵麦 on 9/26/16.
//  Copyright © 2016 Zmy. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Option.h"

NS_ASSUME_NONNULL_BEGIN

@interface Option (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *a;
@property (nullable, nonatomic, retain) NSString *b;
@property (nullable, nonatomic, retain) NSString *c;
@property (nullable, nonatomic, retain) NSString *d;
@property (nullable, nonatomic, retain) Question *question;

@end

NS_ASSUME_NONNULL_END
