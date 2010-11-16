//
//  wwwAppDelegate.h
//  www
//
//  Created by Juan Ferrer on 11/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FBConnect.h"

#define appdelegate (wwwAppDelegate *)[[UIApplication sharedApplication] delegate]

@interface wwwAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    NSManagedObjectContext *managedObjectContext;
    NSManagedObjectModel *managedObjectModel;
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
    
    Facebook *facebook;
}


@property (nonatomic, retain) UIWindow *window;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (nonatomic, retain) Facebook *facebook;

- (NSString *)applicationDocumentsDirectory;


//Register for URLS
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url;
@end
