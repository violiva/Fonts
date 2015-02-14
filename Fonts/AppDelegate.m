//
//  AppDelegate.m
//  Fonts
//
//  Created by Vicente Oliva de la Serna on 14/2/15.
//  Copyright (c) 2015 Vicente Oliva de la Serna. All rights reserved.
//

#import "AppDelegate.h"
#import "VOSFontsTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    // Override point for customization after application launch.
    [self customizeAppearance];
    
    
    VOSFontsTableViewController *fontsVC = [[VOSFontsTableViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:fontsVC];
    self.window.rootViewController = navVC;
    

    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)customizeAppearance{

    UIColor *darkRed = [UIColor colorWithRed:168.0/255.0
                                       green:11.0/255.0
                                        blue:31.0/255.0
                                       alpha:0.5];

    UIColor *clearGrey = [UIColor colorWithRed:227.0/255.0
                                         green:227.0/255.0
                                          blue:227.0/222.0
                                         alpha:1];
    
    [[UITableViewHeaderFooterView appearance] setTintColor:clearGrey];
    [[UINavigationBar appearance] setTintColor:[UIColor greenColor]];

    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor orangeColor],
                                   NSFontAttributeName: [UIFont fontWithName:@"Papyrus" size:20]}];

    [[UITableView appearance] setSectionIndexColor:darkRed];
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
