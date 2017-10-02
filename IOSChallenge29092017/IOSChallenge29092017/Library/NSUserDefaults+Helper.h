//
//  NSUserDefaults+Helper.h
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/3/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSUserDefaults (Helper)

+ (void)saveCustomObject:(NSObject *)object key:(NSString *)key;
+ (NSObject *)loadCustomObjectWithKey:(NSString *)key;

@end
