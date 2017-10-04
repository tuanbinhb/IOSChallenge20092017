//
//  RegisterViewController.h
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/2/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController{
    __weak IBOutlet UILabel *_lbAddImage;
    __weak IBOutlet UIImageView *_imgAvatar;
    __weak IBOutlet UITextField *_tfName;
    __weak IBOutlet UITextField *_tfEmail;
    __weak IBOutlet UITextField *_tfPhone;
    __weak IBOutlet UITextField *_tfPassword;
    __weak IBOutlet UIButton *_btRegister;
    __weak IBOutlet UILabel *_lbLongText;
}

@end
