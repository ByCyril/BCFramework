//
//  BCColor.m
//  BCFoundation
//
//  Created by Cyril Garcia on 2/13/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

#import "BCColor.h"

@implementation BCColor

+ (instancetype)sharedInstance
{
    static BCColor *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[BCColor alloc] init];
        
    });
    return sharedInstance;
}

+ (UIColor *)colorWithRGBHex:(UInt32)hex {
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;

    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:1.0f];
}

- (void)applyCustomColors:(NSDictionary *)colors {
    BCColor.sharedInstance.colors = colors;
}

- (UIColor *)colorWithName:(NSString *)name {
    UInt32 val = [[BCColor.sharedInstance.colors objectForKey:name] intValue];
    return [BCColor colorWithRGBHex:val];
}

@end
