//
//  Question+CoreDataProperties.h
//  Practice
//
//  Created by 赵麦 on 9/26/16.
//  Copyright © 2016 Zmy. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface Question (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *number;
@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) Option *option;
@property (nullable, nonatomic, retain) Answer *answer;

@end

@interface Question (CoreDataGeneratedAccessors)

- (void)addOptionObject:(Option *)value;
- (void)removeOptionObject:(Option *)value;
- (void)addOption:(Option *)values;
- (void)removeOption:(Option *)values;

@end

NS_ASSUME_NONNULL_END
