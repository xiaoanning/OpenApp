//
//  AppDelegate.m
//  OpenApp
//
//  Created by 安宁 on 2017/5/11.
//  Copyright © 2017年 安宁. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@property ( nonatomic , retain ) UIScrollView * sv ;

@property ( nonatomic , retain ) UILabel * label ;


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[UIViewController alloc]init];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    _sv = [[UIScrollView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    _sv.contentSize = CGSizeMake(CGRectGetWidth([[UIScreen mainScreen] bounds]), 1000*2) ;
    [self.window addSubview:_sv];
    
    _label  = [[UILabel alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    _label.numberOfLines = 0 ;
    _label.backgroundColor = [UIColor whiteColor];
    [_sv addSubview:_label];
    
    _label.text = [NSString stringWithFormat:@"%@\n::::: \n\ndidFinishLaunchingWithOptions : %@ \n %@ \n1121=======\n",_label.text,application,launchOptions];
    
    return YES;
}

-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
    _label.text = [NSString stringWithFormat:@"%@\n000000000:\nopenURL:(NSURL *)url options : \n %@\n%@\n%@ \n8898=======\n",_label.text,app,url,options];

    return YES ;
}

-(BOOL)application:(UIApplication *)application handleOpenURL:(nonnull NSURL *)url
{
    _label.text = [NSString stringWithFormat:@"%@\n99999999:\n%@\n999888",_label.text,url];

    return YES ;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
