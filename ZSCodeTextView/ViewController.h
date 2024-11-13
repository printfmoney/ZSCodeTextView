//
//  ViewController.h
//  ZSCodeTextView
//
//  Created by 张爽 on 2024/10/12.
//

#import <UIKit/UIKit.h>

// 屏幕宽度高度
#define SW ([UIScreen mainScreen].bounds.size.width)
#define SH ([UIScreen mainScreen].bounds.size.height)

// 随机色
#define ZSRandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]

@interface ViewController : UIViewController


@end

