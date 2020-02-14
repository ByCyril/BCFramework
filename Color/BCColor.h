//
//  BCColor.h
//  BCFoundation
//
//  Created by Cyril Garcia on 2/13/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BCColor : NSObject

@property BCColor *shared;
@property NSDictionary * colors;

+ (instancetype)sharedInstance;
+ (UIColor *)colorWithRGBHex:(UInt32)hex;

- (void)applyCustomColors:(NSDictionary *)colors;
- (UIColor *)colorWithName:(NSString *)name;

@end

