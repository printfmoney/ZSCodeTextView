//
//  ZSTextCodeView.h
//  ZSCodeTextView
//
//  Created by 张爽 on 2024/10/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZSTextCodeView : UIView

/// 当前输入的内容
@property (nonatomic, copy, readonly) NSString *code;

- (instancetype)initWithCount:(NSInteger)count margin:(CGFloat)margin;

- (instancetype)init UNAVAILABLE_ATTRIBUTE;
+ (instancetype)new UNAVAILABLE_ATTRIBUTE;

@end

@interface ZSLineView : UIView

@property (nonatomic, weak) UIView *colorView;

- (void)animation;

@end

NS_ASSUME_NONNULL_END
