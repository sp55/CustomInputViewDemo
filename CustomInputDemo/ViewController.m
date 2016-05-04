//
//  ViewController.m
//  CustomInputDemo
//
//  Created by admin on 16/5/4.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "InputView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIButton * alertBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    alertBtn.frame = CGRectMake(0, 100, self.view.frame.size.width, 50);
    [alertBtn setTitle:@"Input按钮" forState:UIControlStateNormal];
    [alertBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    alertBtn.backgroundColor = [UIColor grayColor];
    [alertBtn addTarget:self action:@selector(alertView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alertBtn];
}

- (void)alertView:(UIButton *)btn
{
    [[InputView sharedInputView] showInputViewWithConfirmAction:^(NSString *inputText) {
        NSLog(@"输入内容：%@", inputText);
    } andReloadAction:^{
        [[InputView sharedInputView] refreshVerifyImage:[VerifyNumberView verifyNumberImage]];
    }];
}


@end
