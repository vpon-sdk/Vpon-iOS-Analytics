//
//  AppDelegate.m
//  VponDMPExampleObjC
//
//  Created by Yi-Hsiang, Chien on 2020/11/23.
//

#import "AppDelegate.h"
#import <VponDataAnalytics/VponDataAnalytics.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    VDAConfiguration *config = [VDAConfiguration sharedInstance];
    [config setLicenseKey:@"testKey" withCustomID:@"customID" withOptIn:VDAOptInDefault];
    [config setDebugMode:YES];
    [config initialize];
    
    return YES;
}

@end
