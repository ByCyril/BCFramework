//
//  BCDateFormatter.m
//  BCFoundation
//
//  Created by Cyril Garcia on 2/13/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

#import "BCDateFormatter.h"

@implementation BCDateFormatter

+ (NSString *)formatTimeWith:(double)timestamp withCustomFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDate *date = [[NSDate alloc] initWithTimeIntervalSince1970:timestamp];
    [formatter setDateFormat:format];
    NSString *formattedDate = [formatter stringFromDate:date];
    return formattedDate;
}

+ (NSString *)formatTimeWith:(double)timestamp withFormat:(BCTimeStampFormat)format {
    NSString *frm = [BCDateFormatter format:format];
    return [BCDateFormatter formatTimeWith:timestamp withCustomFormat:frm];
}

+ (NSString *)format:(BCTimeStampFormat)format {
    switch (format) {
        case BCTimeStampFormatFullDate:
            return @"EEEE, MMMM d, yyyy";
            break;
        case BCTimeStampFormatSlashedDate:
            return @"mm/dd/yy";
            break;
        case BCTimeStampFormatAnalog:
            return @"h:mm a";
            break;
        case BCTimeStampFormatDay:
            return @"D";
            break;
        case BCTimeStampFormatMonth:
            return @"MM";
            break;
        default:
            return @"";
            break;
    }
}

@end
