//
//  RegisterViewController.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/2/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "RegisterViewController.h"
#import "MBProgressHUD.h"
#import "NSString+Validation.h"


@interface RegisterViewController ()
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) configUI{
    NSString *text = INTRO_TEXT;
    NSMutableAttributedString* attrString = [[NSMutableAttributedString  alloc] initWithString:text];
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    [style setAlignment:NSTextAlignmentCenter];
    [style setLineSpacing:5];
    [attrString addAttribute:NSParagraphStyleAttributeName
                       value:style
                       range:NSMakeRange(0, [text length ])];
    _lbLongText.attributedText = attrString;
    //
    NSString *text1 = ADD_PHOTO;
    NSMutableAttributedString* attrString1 = [[NSMutableAttributedString  alloc] initWithString:text1];
    NSMutableParagraphStyle *style1 = [[NSMutableParagraphStyle alloc] init];
    [style1 setAlignment:NSTextAlignmentCenter];
    [style1 setLineSpacing:5];
    [attrString1 addAttribute:NSParagraphStyleAttributeName
                        value:style1
                        range:NSMakeRange(0, [text1 length ])];
    _lbAddImage.attributedText = attrString1;
    //init Text field
    [self initTextField:_tfName plaintText:NAME_TEXT];
    [self initTextField:_tfEmail plaintText:EMAIL_TEXT];
    [self initTextField:_tfPhone plaintText:PHONE_TEXT];
    [self initTextField:_tfPassword plaintText:PASSWORD_TEXT];
    //init button
    _btRegister.layer.borderColor= [UIColor clearColor].CGColor;
    _btRegister.layer.borderWidth = BORDER_WIDTH;
    _btRegister.layer.cornerRadius = CORNERRADIUS;
    //init ImageView
    UIColor *color = [UIColor whiteColor];
    _imgAvatar.layer.borderColor= color.CGColor;
    _imgAvatar.layer.borderWidth = BORDER_WIDTH;
    _imgAvatar.layer.cornerRadius = _imgAvatar.frame.size.height/2;
    _imgAvatar.clipsToBounds = TRUE;
}
- (void) initTextField: (UITextField *)view plaintText:(NSString*) text{
    UIColor *color = [UIColor whiteColor];
    view.layer.borderColor= color.CGColor;
    view.layer.borderWidth = BORDER_WIDTH;
    view.layer.cornerRadius = CORNERRADIUS;
    view.attributedPlaceholder = [[NSAttributedString alloc] initWithString:text attributes:@{NSForegroundColorAttributeName: color}];
}
- (IBAction)acRegister:(id)sender {
    if([_tfName.text trim].length == 0){
        [self showToast:NAME_NULL];
        return;
    }else if([_tfEmail.text trim].length == 0){
        [self showToast:EMAIL_NULL];
        return;
    }else if(![_tfEmail.text isValidEmail]){
        [self showToast:EMAIL_NOT_VALID];
        return;
    }else if([_tfPhone.text trim].length == 0){
        [self showToast:PHONE_NULL];
        return;
    }else if(![_tfPhone.text isValidPhoneNumber]){
        [self showToast:PHONE_NOT_VALID];
        return;
    }else if([_tfPassword.text trim].length == 0){
        [self showToast:PASSWORD_NULL];
        return;
    }else if(![_tfPassword.text isValidPassword]){
        [self showToast:PASSWORD_NOT_VALID];
        return;
    }else{
        [self showToast:REGISTER_SUCCESS];
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC));
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            [self dismissViewControllerAnimated:TRUE completion:nil];
        });
        
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
