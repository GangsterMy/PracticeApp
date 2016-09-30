//
//  Answer+CoreDataProperties.h
//  Practice
//
//  Created by 赵麦 on 9/26/16.
//  Copyright © 2016 Zmy. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Answer.h"

NS_ASSUME_NONNULL_BEGIN

@interface Answer (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *rightAnswer;
@property (nullable, nonatomic, retain) NSString *userAnswer;
@property (nullable, nonatomic, retain) Question *question;

@end

NS_ASSUME_NONNULL_END
