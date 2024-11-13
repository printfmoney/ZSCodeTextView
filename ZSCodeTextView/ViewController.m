//
//  ViewController.m
//  ZSCodeTextView
//
//  Created by 张爽 on 2024/10/12.
//

#import "ViewController.h"

#import "ZSTFCodeView.h"         // 基础版 - 下划线
#import "ZSTFCodeBView.h"        // 基础版 - 方块
#import "ZSTextCodeView.h"       // 完善版 - 加入动画 - 下划线
#import "ZSTFCursorView.h"       // 基础版 - 下划线 - 有光标

@interface ViewController ()

@property (nonatomic, weak) ZSTFCodeView   *code1View;
@property (nonatomic, weak) ZSTFCodeBView  *code2View;
@property (nonatomic, weak) ZSTextCodeView *code3View;
@property (nonatomic, weak) ZSTFCursorView *code4View;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.contentSize = CGSizeMake(SW, SH * 1.5);
    scrollView.layer.borderColor = [ZSRandomColor CGColor];
    scrollView.layer.borderWidth = 0.5;
    scrollView.frame = CGRectMake(0, 0, SW, SH);
    [self.view addSubview:scrollView];
    
    UILabel *labx = [UILabel new];
    labx.textColor = [UIColor grayColor];
    labx.font = [UIFont systemFontOfSize:16];
    labx.text = @"😘页面可滑动，防止键盘挡住效果😘";
    labx.frame = CGRectMake(30, 45, 320, 15);
    [scrollView addSubview:labx];
    
    
    
    CGFloat x = 30;
    CGFloat w = SW - x * 2;
    CGFloat h = 50;
    CGFloat y = 100;
    
    // --------------------------------------------------------------------
    
    UILabel *labA = [UILabel new];
    labA.textColor = [UIColor orangeColor];
    labA.font = [UIFont systemFontOfSize:13];
    labA.text = @"基本实现原理 - 下划线";
    labA.frame = CGRectMake(x, y, 200, 15);
    [scrollView addSubview:labA];
    
    y = CGRectGetMaxY(labA.frame) + 10;
    
    ZSTFCodeView *code1View = [[ZSTFCodeView alloc] initWithCount:6 margin:20];
    code1View.frame = CGRectMake(x, y, w, h);
    [scrollView addSubview:code1View];
    self.code1View = code1View;
    
    
    // --------------------------------------------------------------------
    
    y = CGRectGetMaxY(code1View.frame) + 60;
    
    UILabel *labB = [UILabel new];
    labB.textColor = [UIColor orangeColor];
    labB.font = [UIFont systemFontOfSize:13];
    labB.text = @"基本实现原理 - 方块";
    labB.frame = CGRectMake(x, y, 200, 15);
    [scrollView addSubview:labB];
    
    y = CGRectGetMaxY(labB.frame) + 30;
    
    ZSTFCodeBView *code2View = [[ZSTFCodeBView alloc] initWithCount:6 margin:20];
    code2View.frame = CGRectMake(x, y, w, h);
    [scrollView addSubview:code2View];
    self.code2View = code2View;
    
    
    // --------------------------------------------------------------------
    
    y = CGRectGetMaxY(code2View.frame) + 60;
    
    UILabel *labC = [UILabel new];
    labC.textColor = [UIColor orangeColor];
    labC.font = [UIFont systemFontOfSize:13];
    labC.text = @"完善版 - 加入动画 - 下划线";
    labC.frame = CGRectMake(x, y, 200, 15);
    [scrollView addSubview:labC];
    
    y = CGRectGetMaxY(labC.frame) + 30;
    
    ZSTextCodeView *code3View = [[ZSTextCodeView alloc] initWithCount:6 margin:20];
    code3View.frame = CGRectMake(x, y, w, h);
    [scrollView addSubview:code3View];
    self.code3View = code3View;
    
    // --------------------------------------------------------------------
    
    y = CGRectGetMaxY(code3View.frame) + 60;
    
    UILabel *labD = [UILabel new];
    labD.textColor = [UIColor blueColor];
    labD.font = [UIFont systemFontOfSize:13];
    labD.text = @"基础版 - 下划线 - 有光标";
    labD.frame = CGRectMake(x, y, 200, 15);
    [scrollView addSubview:labD];
    
    y = CGRectGetMaxY(labD.frame) + 30;
    
    ZSTFCursorView *code4View = [[ZSTFCursorView alloc] initWithCount:6 margin:20];
    code4View.frame = CGRectMake(x, y, w, h);
    [scrollView addSubview:code4View];
    self.code4View = code4View;
    
    // --------------------------------------------------------------------
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    [scrollView addGestureRecognizer:tap];
}

- (void)tap {
    [self.code1View endEditing:YES];
    [self.code2View endEditing:YES];
    [self.code3View endEditing:YES];
    [self.code4View endEditing:YES];
}

@end
