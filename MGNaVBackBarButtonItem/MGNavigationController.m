//
//  MGNavigationController.m
//  xm04-百思不得姐
//
//  Created by 穆良 on 16/3/9.
//  Copyright © 2016年 穆良. All rights reserved.
//

#import "MGNavigationController.h"

@implementation MGNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 如果滑动移除控制的功能失效，清空代理(让导航控制器重新设置这个功能)
    self.interactivePopGestureRecognizer.delegate = nil;
}

/**
 *  第一次使用这个类时,会调用一次
 */
+ (void)initialize
{
    // 以后可能会有 其他的 导航控制器
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    [bar setTitleTextAttributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:20]}];
    
    // 设置item
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    NSMutableDictionary *itemAttrs = [NSMutableDictionary dictionary];
    itemAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    itemAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:17];
    [item setTitleTextAttributes:itemAttrs forState:UIControlStateNormal];
    
    NSMutableDictionary *itemDisabledAttrs = [NSMutableDictionary dictionary];
    itemDisabledAttrs[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [item setTitleTextAttributes:itemDisabledAttrs forState:UIControlStateDisabled];
    
}

/**
 *  拦截所有push操作
 */
//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
//{
//    
//    if (self.childViewControllers.count > 0) {
//        LxDBAnyVar(self.childViewControllers.count);
//        
//        [viewController setHidesBottomBarWhenPushed:YES];
//        
//        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//        [button setTitle:@"返回" forState:UIControlStateNormal];
//        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
//        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
//        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
//
//        [button sizeToFit];
//        
//        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
//        button.contentEdgeInsets = UIEdgeInsetsMake(0, -8, 0, 0);
//        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
//        
//        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
//    }
//
//    [super pushViewController:viewController animated:animated];
//    
//    LxDBAnyVar(self.childViewControllers.count);
//}
//
//- (void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion
//{
//    LxDBAnyVar(self.childViewControllers.count);
//    
//    [super presentViewController:viewControllerToPresent animated:flag completion:completion];
//    
//    LxDBAnyVar(self.childViewControllers.count);
//    LxDBAnyVar(self.presentedViewController);
//}
//
//- (void)back
//{
//    [self popViewControllerAnimated:YES];
//}
//
//- (void)dismiss
//{
//    
//}


@end
