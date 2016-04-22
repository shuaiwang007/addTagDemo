//
//  WSPlaceHolderTextView.h
//  addTagDemo
//
//  Created by Mr.Wang on 16/4/22.
//  Copyright © 2016年 Mr.wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WSPlaceHolderTextView : UITextView
/** 占位文字 */
@property (nonatomic, copy) NSString *placeholder;
/** 占位文字的颜色 */
@property (nonatomic, strong) UIColor *placeholderColor;
@end
