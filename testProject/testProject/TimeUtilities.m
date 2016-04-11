//
//  TimeUtilities.m
//  testProject
//
//  Created by Pooja Havaldar on 06/04/16.
//  Copyright © 2016 Silicus. All rights reserved.
//

#import "TimeUtilities.h"

@implementation TimeUtilities
+ (NSString *)printDateTime: (NSString *)dateTime withFormat: (NSString *)format
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:dateTime];
    [dateFormatter setDateFormat:format];
    NSString *result = [dateFormatter stringFromDate:date];
    return result;
}

+(NSDate *)getDateFromDateString :(NSString *)dateString {
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MM/dd/yyyy hh:mm:ss a"];
    NSDate *date = [dateFormatter dateFromString:dateString];
    return date;
}

+(NSDate *)getDateFromDateStringWithoutTime :(NSString *)dateString {
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MM-dd-yyyy"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"GMT"]];
    NSDate *date = [dateFormatter dateFromString:dateString];
    return date;
}

+ (NSString *)printDateTimeWithLocaleFormat: (NSString *)dateTime
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:dateTime];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:NSLocalizedString(@"locale", nil)];
    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setLocale:locale];
    NSString *result = [dateFormatter stringFromDate:date];
    return result;
}

// if i'm setting display i'll use NSDateFormatterShortStyle, if I'm saving data I'll use NSDateFormatterLongStyle
+ (NSString *)printDateTimeWithDateNow:(timeType) timeType
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDate *date = [NSDate date];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:NSLocalizedString(@"locale", nil)];
    if (timeType == displayType) {
        [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    } else if (timeType == savingType) {
        [dateFormatter setTimeStyle:NSDateFormatterLongStyle];
    }
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setLocale:locale];
    NSString *result = [dateFormatter stringFromDate:date];
    return result;
}

+ (NSString *)convertDateTimeToFixedFormat: (NSString *)time
{
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:NSLocalizedString(@"locale", nil)];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterLongStyle];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setLocale:locale];
    NSString *result;
    NSDate *date = [dateFormatter dateFromString:time];
    [dateFormatter setDateFormat:@"dd/MM/yyyy HH:mm:ss"];
    result = [dateFormatter stringFromDate:date];
    NSLog(@"convertTimeToFixedFormat result: %@", result);
    return result;
}

+ (NSString *)printDateWithLocaleFormat: (NSString *)dateTime
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:dateTime];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:NSLocalizedString(@"locale", nil)];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setLocale:locale];
    NSString *result = [dateFormatter stringFromDate:date];
    return result;
}

+ (NSString *)printTimeWithLocaleFormat: (NSString *)dateTime
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:dateTime];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:NSLocalizedString(@"locale", nil)];
    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    [dateFormatter setDateStyle:NSDateFormatterNoStyle];
    [dateFormatter setLocale:locale];
    NSString *result = [dateFormatter stringFromDate:date];
    return result;
}
+ (NSString *)printDateFormat:(NSDate *)dateTime
{
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MM-dd-yyyy"];
    NSString *result = [dateFormatter stringFromDate:dateTime];
    return result;
}

+(int)calculateAge:(NSString *)dob{
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MM/dd/yyyy"];
    NSDate* birthday  = [dateFormatter dateFromString:dob];
    
    NSDate* now = [NSDate date];
    NSDateComponents* ageComponents = [[NSCalendar currentCalendar]
                                       components:NSCalendarUnitYear
                                       fromDate:birthday
                                       toDate:now
                                       options:0];
    NSInteger age = [ageComponents year] ;
    return (int)age;
}



@end
