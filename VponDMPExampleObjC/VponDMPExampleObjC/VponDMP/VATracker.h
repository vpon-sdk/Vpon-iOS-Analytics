//
//  VATracker.h
//  VpadnAnalytics
//
//  Created by vpon-MI on 2015/3/25.
//  Copyright (c) 2015年 vpon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VpadnAnaDictionaryBuilder.h"

@protocol VATracker<NSObject>

/// Send Event Method
/// @param builder Data Builder
- (void) send:(VpadnAnaDictionaryBuilder *)builder;

@end
