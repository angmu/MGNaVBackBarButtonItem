//
//  MGMacro.h
//  MGProjectDemo
//
//  Created by 穆良 on 16/6/29.
//  Copyright © 2016年 穆良. All rights reserved.
//

#ifndef MGMacro_h
#define MGMacro_h


#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
/** 标题栏默认字体 */
#define MGTitleFont [UIFont systemFontOfSize:15]

/// 导航栏背景颜色
#define MGNavBarColor kColorHex(0x94DDFA)
/// APP背景颜色
#define MGBackgroundColor kColorHex(0xF2F3F5)


/************ 随机颜色 ************/
#define kRandomColor [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0]
// rgb颜色转换(十六进制)
#define kColorHex(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define kColorRGB(R,G,B)  [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0]
#define kColorRGBA(R,G,B,A)  [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]


/************ 自定义NSLog ************/
#ifdef DEBUG
#define MGLog(...) NSLog(__VA_ARGS__)
#else
#define MGLog(...)
#endif
// 打印方法名
#define MGLogFunc MGLog(@"%s",__FUNCTION__);



#endif /* MGMacro_h */
