//
//  Random.h
//  BCFoundation
//
//  Created by Cyril Garcia on 2/13/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BCRandom : NSObject

+ (NSString *)randomNumbersWithLength:(int)length;
+ (NSString *)randomAlphaWithLength:(int)length;
+ (NSString *)randomAlphaWithLength:(int)length withDivider:(NSString *)divider byNumberOfCharactersApart:(int)diff;

@end
