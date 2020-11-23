//
//  VpadnAnaDictionaryBuilder.h
//  VpadnAnalytics
//
//  Created by vpon-MI on 2015/3/25.
//  Copyright (c) 2015年 vpon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VpadnAnaDictionaryBuilder : NSObject

/// Create Event Fuction
/// @param strEventName Event Name
/// @param extraData    Payload
+ (VpadnAnaDictionaryBuilder *)createEventWithEventName:(NSString *)strEventName
                                              extraData:(NSMutableDictionary *)dicExtraData;

@end
