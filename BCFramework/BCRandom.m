//
//  Random.m
//  BCFoundation
//
//  Created by Cyril Garcia on 2/13/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

#import "BCRandom.h"

@implementation BCRandom

char characters[36] = {'0','1','2','3','4','5','6','7','8','9', 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};

+ (NSString *)randomNumbersWithLength:(int)length {
    NSString *randStr = @"";
    
    for (int i = 1; i <= length; i++) {
        NSUInteger r = arc4random_uniform(9);
        NSString *n = [NSString stringWithFormat:@"%c", characters[r]];
        randStr = [randStr stringByAppendingString:n];
    }

    return randStr;
}

+ (NSString *)randomAlphaWithLength:(int)length {
    NSString *randStr = @"";
    
    for (int i = 1; i <= length; i++) {
        NSUInteger r = arc4random_uniform(26);
        NSString *n = [NSString stringWithFormat:@"%c",characters[r]];
        randStr = [randStr stringByAppendingString:n];
    }
    
    return randStr;
}

+ (NSString *)randomAlphaWithLength:(int)length withDivider:(NSString *)divider byNumberOfCharactersApart:(int)diff {
    int newLength = length;
    
    NSString *randStr = @"";
    
    if (length % diff > 0) {
        newLength -= length % diff;
    }
    
    int div = 0;
    int i = 0;
    
    while (i < newLength) {
        if (div++ == diff) {
            randStr = [randStr stringByAppendingString:divider];
            div = 0;
        } else {
            NSUInteger r = arc4random_uniform(26);
            NSString *n = [NSString stringWithFormat:@"%c",characters[r]];
            randStr = [randStr stringByAppendingString:n];
            
            i++;
        }
    }
    
    return randStr;
}

@end
