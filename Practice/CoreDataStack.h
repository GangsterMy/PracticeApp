//
//  CoreDataStack.h
//  Practice
//
//  Created by 赵麦 on 9/26/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CoreDataStack : NSObject

@property (nonatomic, strong) NSManagedObjectContext *context;

+(instancetype)sharedCoreDataStack;

-(void)saveContext;
-(NSManagedObjectContext *)context;

@end
