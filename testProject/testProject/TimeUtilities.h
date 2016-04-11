//
//  TimeUtilities.h
//  testProject
//
//  Created by Pooja Havaldar on 06/04/16.
//  Copyright © 2016 Silicus. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, timeType) {
    displayType,
    savingType
};
@interface TimeUtilities : NSObject


+ (NSString *)printDateTime: (NSString *)dateTime withFormat: (NSString *)format;
+ (NSString *)printDateTimeWithLocaleFormat: (NSString *)dateTime;
//+ (NSString *)printDateTimeWithDateNow;
+ (NSString *)convertDateTimeToFixedFormat: (NSString *)time;
+ (NSString *)printDateWithLocaleFormat: (NSString *)dateTime;
+ (NSString *)printTimeWithLocaleFormat: (NSString *)dateTime;
+ (NSString *)printDateTimeWithDateNow:(timeType) timeType;
+ (NSString *)printDateFormat:(NSDate *)dateTime;
+ (NSDate *)getDateFromDateString :(NSString *)dateString;
+ (NSDate *)getDateFromDateStringWithoutTime :(NSString *)dateString;

+(int) calculateAge : (NSString *) dob;

@end



