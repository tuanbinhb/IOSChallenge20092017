//
//  NSUserDefaults+Helper.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/3/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "NSUserDefaults+Helper.h"

@implementation NSUserDefaults (Helper)

+ (void)saveCustomObject:(NSObject *)object key:(NSString *)key {
    
    NSData *encodedObject = [NSKeyedArchiver archivedDataWithRootObject:object];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:encodedObject forKey:key];
    [defaults synchronize];
}

+ (NSObject *)loadCustomObjectWithKey:(NSString *)key {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *encodedObject = [defaults objectForKey:key];
    NSObject *object = [NSKeyedUnarchiver unarchiveObjectWithData:encodedObject];
    
    return object;
}

@end
