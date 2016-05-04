//
//  InputView.h
//  CustomInputDemo
//
//  Created by admin on 16/5/4.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VerifyNumberView.h"


typedef void(^ClickBlock)(NSString * inputText);
typedef void(^ReloadBlock)();

@interface InputView : UIView<UITextFieldDelegate>

+ (InputView *)sharedInputView;

- (void)showInputViewWithConfirmAction:(ClickBlock)confirmBlock andReloadAction:(ReloadBlock)refreshBlcok;

- (void)refreshVerifyImage:(UIImage *)verifyImage;

@end
