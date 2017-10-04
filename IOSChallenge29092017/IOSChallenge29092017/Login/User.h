//
//  User.h
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/3/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface User : NSObject<NSCoding>{
    __weak NSString *_username;
    __weak NSString *_password;
}
-(void)setUserName:(NSString *)values;
-(void)setPassword:(NSString *)values;
@end
