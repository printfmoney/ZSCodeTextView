//
//  ZSTFCursorView.h
//  ZSCodeTextView
//
//  Created by 张爽 on 2024/10/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZSTFCursorView : UIView

/// 当前输入的内容
@property (nonatomic, copy, readonly) NSString *code;


// ----------------------------Method----------------------------

- (instancetype)initWithCount:(NSInteger)count margin:(CGFloat)margin;

- (instancetype)init UNAVAILABLE_ATTRIBUTE;
+ (instancetype)new UNAVAILABLE_ATTRIBUTE;

@end

@interface ZSCursorLabel : UILabel

@property (nonatomic, weak, readonly) UIView *cursorView;

- (void)startAnimating;
- (void)stopAnimating;

@end

NS_ASSUME_NONNULL_END
