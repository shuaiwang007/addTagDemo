//
//  WSTagTextField.h
//  addTagDemo
//
//  Created by Mr.Wang on 16/4/22.
//  Copyright © 2016年 Mr.wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WSTagTextField : UITextField

/** 按了删除键后的回调 */
@property (nonatomic, copy) void (^deleteBlock)();

@end
