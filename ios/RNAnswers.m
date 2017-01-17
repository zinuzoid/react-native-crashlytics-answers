//
//  RNAnswers.m
//  RNCrashlyticsAnswers
//
//  Created by Jetsada Machom on 1/17/2560 BE.
//  Copyright © 2560 Facebook. All rights reserved.
//

#import "RNAnswers.h"
#import <Crashlytics/Crashlytics.h>

@implementation RNAnswers

RCT_EXPORT_MODULE(AnswersModule);

RCT_EXPORT_METHOD(logEvent:(NSString*) eventName)
{
    [Answers logCustomEventWithName:eventName customAttributes:nil];
    NSLog(@"trackEvent: %@", eventName);
}

@end
