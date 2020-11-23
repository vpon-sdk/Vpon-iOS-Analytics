//
//  VpadnAnalytics.h
//  VpadnAnalytics
//
//  Created by vpon-MI on 2015/3/25.
//  Copyright (c) 2015年 vpon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VATracker.h"
#import "VpadnAnaDictionaryBuilder.h"

typedef NS_ENUM(NSInteger, VpadnAnOptIn) {
    VpadnAnOptInDefault = -1,
    VpadnAnOptInLevel1 = 1,
    VpadnAnOptInLevel2 = 2,
    VpadnAnOptInLevel3 = 3,
    VpadnAnOptInLevel4 = 4,
};

@interface VpadnAnalytics : NSObject

@property(nonatomic, assign) id<VATracker> defaultTracker;

/// Singleton
+ (VpadnAnalytics *) sharedInstance;

/// DMP Version
- (NSString *) getVersion;

/// Configuration
/// @param licenseKey License Key
/// @param customID Custom ID
/// @param optIn  Vpon DMP Option In Level
- (void) setLicenseKey:(NSString *)licenseKey withCustomID:(NSString *)customID withOptIn:(VpadnAnOptIn)optIn;

/// Set Debug Mode
/// @param enable flag
- (void) setDebugMode:(BOOL)enable;

/// InitSDK
- (void) initialize;

@end
