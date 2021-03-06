//
//  MMAppDelegate.m
//  barTalk
//
//  Created by David Johnston on 2/6/13.
//  Copyright (c) 2013 David Johnston. All rights reserved.
//

//
//These  are imported files
//
//
#import "MMAppDelegate.h"
#import "MMSantasLittleHelper.h"
#import "MMViewController.h"

//
//this is where implementation of a class starts
//

@implementation MMAppDelegate 

- (BOOL)isAwesomeLevelHighEnough:(int)awesomenessLevel
{
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //just testing this out
    [self isAwesomeLevelHighEnough:4];//passes a 4 to isAwesomeLeve... and gets YES back
    
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //the line above is equivalent to the line below.
    [self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.viewController = [[MMViewController alloc] initWithNibName:@"MMViewController_iPhone" bundle:nil];
    } else {
        self.viewController = [[MMViewController alloc] initWithNibName:@"MMViewController_iPad" bundle:nil];
    }
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
