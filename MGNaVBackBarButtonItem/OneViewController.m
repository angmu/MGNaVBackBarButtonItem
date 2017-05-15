//
//  ViewController.m
//  MGNaVTest
//
//  Created by 穆良 on 2017/5/15.
//  Copyright © 2017年 穆良. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"
#import "ModalViewController.h"

#import "MGNavigationController.h"
@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"ONE";
    self.view.backgroundColor = kColorHex(0x94DDFA);
    
    [self _initUI];
}


- (void)_initUI {
    
    UIButton *pushBtn = [self setupButtonWithTitle:@"下一个控制器" target:self action:@selector(pushAction)];
    [self.view addSubview:pushBtn];
    [pushBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(200);
        make.left.equalTo(self.view.mas_left).offset(50);
        make.right.equalTo(self.view.mas_right).offset(-50);
    }];
    
    
    UIButton *modalBtn = [self setupButtonWithTitle:@"modal一个控制器" target:self action:@selector(moadalAction)];
    [self.view addSubview:modalBtn];
    [modalBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(pushBtn.mas_top).offset(80);
        make.left.equalTo(self.view.mas_left).offset(50);
        make.right.equalTo(self.view.mas_right).offset(-50);
    }];
}

- (UIButton *)setupButtonWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    button.backgroundColor = kColorHex(0x993EFF);
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

#pragma mark - 点击事件
- (void)pushAction
{
    TwoViewController *two = [[TwoViewController alloc] init];
    [self.navigationController pushViewController:two animated:YES];
}

- (void)moadalAction
{
    ModalViewController *modal = [[ModalViewController alloc] init];
    MGNavigationController *nav = [[MGNavigationController alloc] initWithRootViewController:modal];
    
    [self.navigationController presentViewController:nav animated:YES completion:^{
//        MGLog(@"modal控制器展现完毕");
    }];
}


@end
