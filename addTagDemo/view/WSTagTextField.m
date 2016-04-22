//
//  WSTagTextField.m
//  addTagDemo
//
//  Created by Mr.Wang on 16/4/22.
//  Copyright © 2016年 Mr.wang. All rights reserved.
//

#import "WSTagTextField.h"

@implementation WSTagTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.placeholder = @"多个标签用逗号或者换行隔开";
        // 设置了占位文字内容以后, 才能设置占位文字的颜色
        [self setValue:[UIColor grayColor] forKeyPath:@"_placeholderLabel.textColor"];
        self.height = 25;
    }
    return self;
}

// 也能在这个方法中监听键盘的输入，比如输入“换行”
//- (void)insertText:(NSString *)text
//{
//    [super insertText:text];
//
//    XMGLog(@"%d", [text isEqualToString:@"\n"]);
//}

- (void)deleteBackward
{
    !self.deleteBlock ? : self.deleteBlock();
    
    [super deleteBackward];
}


@end
