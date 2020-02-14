//
//  BCDateFormatter.h
//  BCFoundation
//
//  Created by Cyril Garcia on 2/13/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, BCTimeStampFormat) {
    BCTimeStampFormatFullDate,
    BCTimeStampFormatSlashedDate,
    BCTimeStampFormatAnalog,
    BCTimeStampFormatDay,
    BCTimeStampFormatMonth
};

@interface BCDateFormatter : NSObject

+ (NSString *)formatTimeWith:(double)timestamo withFormat:(BCTimeStampFormat)format;
+ (NSString *)formatTimeWith:(double)timestamp withCustomFormat:(NSString *)format;

@end
