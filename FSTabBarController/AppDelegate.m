//
//  AppDelegate.m
//  FSTabBarController
//
//  Created by 王方帅 on 15/9/5.
//  Copyright (c) 2015年 王方帅. All rights reserved.
//

#import "AppDelegate.h"
#import "FSTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.rootViewController = [self tabbarController];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(FSTabBarController *)tabbarController
{
    FSTabBarController *tabBarC = [[FSTabBarController alloc] init];
    
    FirstViewController *firstC = [[FirstViewController alloc] init];
    SecondViewController *secondC = [[SecondViewController alloc] init];
    ThirdViewController *thirdC = [[ThirdViewController alloc] init];
    
    UINavigationController *nav1C = [[UINavigationController alloc] initWithRootViewController:firstC];
    nav1C.navigationBarHidden = YES;
    
    UINavigationController *nav2C = [[UINavigationController alloc] initWithRootViewController:secondC];
    nav2C.navigationBarHidden = YES;
    
    UINavigationController *nav3C = [[UINavigationController alloc] initWithRootViewController:thirdC];
    nav3C.navigationBarHidden = YES;
    
    tabBarC.viewControllers = @[nav1C,nav2C,nav3C];
    
    FSTabBarItemView *item1 = tabBarC.tabBarButtonArray[0];
    item1.title = @"First";
    item1.color = kUIColorFromRGB(0x7b7b7b);
    item1.selectedColor = RGBCOLOR(66, 157, 150);
    item1.image = [UIImage imageNamed:@"shouye"];
    item1.selectedImage = [UIImage imageNamed:@"shouye_selected"];
    
    FSTabBarItemView *item2 = tabBarC.tabBarButtonArray[1];
    item2.title = @"Second";
    item2.color = kUIColorFromRGB(0x7b7b7b);
    item2.selectedColor = RGBCOLOR(66, 157, 150);
    item2.image = [UIImage imageNamed:@"kecheng"];
    item2.selectedImage = [UIImage imageNamed:@"kecheng_selected"];
    
    FSTabBarItemView *item3 = tabBarC.tabBarButtonArray[2];
    item3.title = @"Third";
    item3.color = kUIColorFromRGB(0x7b7b7b);
    item3.selectedColor = RGBCOLOR(66, 157, 150);
    item3.image = [UIImage imageNamed:@"wode"];
    item3.selectedImage = [UIImage imageNamed:@"wode_selected"];
    return tabBarC;
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
