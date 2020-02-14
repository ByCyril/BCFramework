//
//  BCStrings.m
//  BCFoundation
//
//  Created by Cyril Garcia on 2/13/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

#import "BCString.h"

@implementation BCString

+ (NSString *)parse:(NSString *)str fromIndex:(int)from toIndex:(int)to {
    NSString *fromStr = [str substringFromIndex:from];
    NSString *lastStr = [fromStr substringToIndex:to - from];
    
    return lastStr;
}

@end
