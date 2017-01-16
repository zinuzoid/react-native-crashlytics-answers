//
//  RNCrashlytics.m
//  RNCrashlyticsAnswers
//
//  Created by Jetsada Machom on 1/16/2560 BE.
//  Copyright © 2560 Facebook. All rights reserved.
//

#import "RNCrashlytics.h"
#import <Crashlytics/Crashlytics.h>

@implementation RNCrashlytics

RCT_EXPORT_MODULE(@"CrashlyticsModule");

RCT_EXPORT_METHOD(crash)
{
    [[Crashlytics sharedInstance] crash];
}

@end
