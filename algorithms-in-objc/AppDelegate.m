//
//  AppDelegate.m
//  algorithms-in-objc
//
//  Created by Fang Chen on 4/20/12.
//  Copyright (c) 2012 GoldenGloves. All rights reserved.
//

#import "AppDelegate.h"

#import "DemoViewController.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    DemoViewController *dvc = [[DemoViewController alloc]init];
    UINavigationController *navcon = [[UINavigationController alloc]initWithRootViewController:dvc];
    
    [self.window setRootViewController:navcon];
    [self.window makeKeyAndVisible];

    return YES;
}

@end
