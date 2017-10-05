//
//  LoginViewController.h
//  IOSChallenge29092017
//
//  Created by Macbook  on 9/29/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TBBaseViewController.h"
@interface LoginViewController : TBBaseViewController {
    __weak IBOutlet UILabel *_lbLongText;
    __weak IBOutlet UITextField *_tfEmail;
    __weak IBOutlet UITextField *_tfPassword;
    __weak IBOutlet UIButton *_tfLogin;
    __weak IBOutlet UILabel *_lbPassword;
    __weak IBOutlet UILabel *_lbRegister;
    
}

@end
