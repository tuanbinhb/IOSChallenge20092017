//
//  LoginViewController.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 9/29/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "LoginViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "RegisterViewController.h"
#import "NSString+Validation.h"
#import "MBProgressHUD.h"
#import "NSObject+ClassName.h"
#import "NSUserDefaults+Helper.h"
#import "User.h"

@interface LoginViewController ()
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) configUI{
    //
    NSString *text = INTRO_TEXT;
    NSMutableAttributedString* attrString = [[NSMutableAttributedString  alloc] initWithString:text];
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    [style setAlignment:NSTextAlignmentCenter];
    [style setLineSpacing:5];
    [attrString addAttribute:NSParagraphStyleAttributeName
                       value:style
                       range:NSMakeRange(0, [text length ])];
    _lbLongText.attributedText = attrString;
    //email style
    [self initTextField:_tfEmail plaintText:EMAIL_TEXT];
    //password style
    [self initTextField:_tfPassword plaintText:PASSWORD_TEXT];
    //Button Login
    _tfLogin.layer.borderColor= [UIColor clearColor].CGColor;
    _tfLogin.layer.borderWidth = BORDER_WIDTH;
    _tfLogin.layer.cornerRadius = CORNERRADIUS;
    //
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(registerLabelPressed:)];
    tapGestureRecognizer.numberOfTapsRequired = 1;
    [_lbRegister addGestureRecognizer:tapGestureRecognizer];
    _lbRegister.userInteractionEnabled = TRUE;
}

- (void) initTextField: (UITextField *)view plaintText:(NSString*) text{
    UIColor *color = [UIColor whiteColor];
    view.layer.borderColor= color.CGColor;
    view.layer.borderWidth = BORDER_WIDTH;
    view.layer.cornerRadius = CORNERRADIUS;
    view.attributedPlaceholder = [[NSAttributedString alloc] initWithString:text attributes:@{NSForegroundColorAttributeName: color}];
}

-(void)registerLabelPressed:(UITapGestureRecognizer *)sender{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
    RegisterViewController *viewController =
    [storyboard instantiateViewControllerWithIdentifier:@"RegisterViewController"];
    [self presentViewController:viewController animated:TRUE completion:nil];
}

- (IBAction)acLogin:(id)sender {
    if([[_tfEmail.text trim] length] == 0){
        [self showToast:EMAIL_NULL];
        return;
    }else if(![_tfEmail.text isValidEmail]){
        [self showToast:EMAIL_NOT_VALID];
        return;
    }else if([[_tfPassword.text trim] length] == 0){
        [self showToast:PASSWORD_NULL];
        return;
    }else if(![_tfPassword.text isValidPassword]){
        [self showToast:PASSWORD_NOT_VALID];
        return;
    }else{
        User *user = [[User alloc] init];
        [user setPassword:_tfPassword.text];
        [user setUserName:_tfEmail.text];
        [NSUserDefaults saveCustomObject:user key:KEY];
        _tfEmail.text = @"";
        _tfPassword.text = @"";
        [self showToast:LOGIN_SUCCESS];
    }
}

- (void) showToast: (NSString *)mess{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.margin = 10.f;
    hud.yOffset = 150.f;
    hud.removeFromSuperViewOnHide = YES;
    hud.label.text = mess;
    [hud hideAnimated:YES afterDelay:2];
}


@end
