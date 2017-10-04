//
//  User.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/3/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "User.h"


@implementation User

- (void)setUserName:(NSString *)newValue {
    _username = newValue;
}
- (void)setPassword:(NSString *)newValue {
    _password = newValue;
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    [aCoder encodeObject:_username forKey:@"_username"];
    [aCoder encodeObject:_password forKey:@"_password"];
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    if((self = [super init])) {
        _username = [aDecoder decodeObjectForKey:@"_username"];
        _password = [aDecoder decodeObjectForKey:@"_password"];
    }
    return self;
}

@end
