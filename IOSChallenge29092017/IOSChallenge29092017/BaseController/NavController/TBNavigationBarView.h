//
//  TBNavigationBarView.h
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/6/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TBNavigationbarViewDelegate <NSObject>
- (void) backPress: (id)sender;
@end
@interface TBNavigationBarView : UIView
@property (weak, nonatomic) IBOutlet UIButton *leftIcon;
@property (weak, nonatomic) IBOutlet UIButton *rightIcon;
@property (weak, nonatomic) id<TBNavigationbarViewDelegate> delegate;
+ (TBNavigationBarView *)newView;


@end
