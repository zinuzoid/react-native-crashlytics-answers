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

RCT_EXPORT_MODULE(CrashlyticsModule);

RCT_EXPORT_METHOD(setUserIdentify:(NSString*) identify)
{
    [[Crashlytics sharedInstance] setUserIdentifier:identify];
}

RCT_EXPORT_METHOD(setUserName:(NSString*) name)
{
    [[Crashlytics sharedInstance] setUserName:name];
}

RCT_EXPORT_METHOD(setUserEmail:(NSString*) email)
{
    [[Crashlytics sharedInstance] setUserEmail:email];
}

RCT_EXPORT_METHOD(crash)
{
    [[Crashlytics sharedInstance] crash];
}

RCT_EXPORT_METHOD(logError:(NSString*) message)
{
    [[Crashlytics sharedInstance] logEvent:message];
}

@end
