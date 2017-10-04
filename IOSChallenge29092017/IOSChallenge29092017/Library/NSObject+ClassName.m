//
//  NSObject+ClassName.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/3/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "NSObject+ClassName.h"

@implementation NSObject (ClassName)

+ (NSString *)className
{
    return NSStringFromClass([self class]);
}

- (NSString *)className
{
    return NSStringFromClass([self class]);
}

@end
