//
//  WSTagButton.m
//  addTagDemo
//
//  Created by Mr.Wang on 16/4/22.
//  Copyright © 2016年 Mr.wang. All rights reserved.
//

#import "WSTagButton.h"

@implementation WSTagButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setImage:[UIImage imageNamed:@"chose_tag_close_icon"] forState:UIControlStateNormal];
        self.backgroundColor = [UIColor redColor];
        self.titleLabel.font = [UIFont systemFontOfSize:12];
    }
    return self;
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];
    
    [self sizeToFit];
    
    self.width += 3 * 10;
    self.height = 25;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.titleLabel.x = 10;
    self.imageView.x = CGRectGetMaxX(self.titleLabel.frame) + 10;
}


@end
