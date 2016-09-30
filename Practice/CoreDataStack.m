//
//  CoreDataStack.m
//  Practice
//
//  Created by 赵麦 on 9/26/16.
//  Copyright © 2016 Zmy. All rights reserved.
//

#import "CoreDataStack.h"

@interface CoreDataStack ()
@property (nonatomic, strong) NSPersistentStoreCoordinator *coordinator;
@property (nonatomic, strong) NSManagedObjectModel *model;
@end

@implementation CoreDataStack

+(instancetype)sharedCoreDataStack {
    static CoreDataStack *coreDataStack;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        coreDataStack = [[CoreDataStack alloc] init];
    });
    
    return coreDataStack;
}

-(NSManagedObjectModel *)model {
    if (_model) {
        return _model;
    }
    
    _model = [NSManagedObjectModel mergedModelFromBundles:nil];

    return _model;
}

-(NSURL *)documentURL {

    NSFileManager *fm = [NSFileManager defaultManager];
    NSArray *urls = [fm URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    
    return urls[0];
}

-(NSPersistentStoreCoordinator *)coordinator {
    if (_coordinator) {
        return _coordinator;
    }
    
    _coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:self.model];
   
    NSURL *sqliteURL = [[self documentURL] URLByAppendingPathComponent:@"Model.sqlite"];
    NSDictionary *dic = @{NSMigratePersistentStoresAutomaticallyOption:@YES,
                          NSInferMappingModelAutomaticallyOption:@NO};
    NSError *error;
    NSPersistentStore *store = [_coordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:sqliteURL options:dic error:&error];
    
    if (!store) {
        PALog(@"%@", error.description);
    }
    
    return _coordinator;
}

-(NSManagedObjectContext *)context {
    if (_context) {
        return _context;
    }
    
    _context = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    _context.persistentStoreCoordinator = self.coordinator;
    
    return _context;
}

-(void)saveContext {
    NSError *error;
    if (![_context save:&error]) {
        NSLog(@"%@", error.description);
    }
}


@end
