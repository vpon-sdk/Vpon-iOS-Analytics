//
//  AppDelegate.m
//  VponDMPExampleObjC
//
//  Created by Yi-Hsiang, Chien on 2020/11/23.
//

#import "AppDelegate.h"
#import "VpadnAnalytics.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    VpadnAnalytics *config = [VpadnAnalytics sharedInstance];
    [config setLicenseKey:@"testkey" withCustomID:@"" withOptIn:VpadnAnOptInDefault];
    [config setDebugMode:NO];
    [config initialize];
    
    return YES;
}

@end
