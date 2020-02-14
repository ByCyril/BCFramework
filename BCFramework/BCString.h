//
//  BCStrings.h
//  BCFoundation
//
//  Created by Cyril Garcia on 2/13/20.
//  Copyright © 2020 Cyril Garcia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BCString : NSObject

+ (NSString *)parse:(NSString *)str fromIndex:(int)from toIndex:(int)to;

@end
