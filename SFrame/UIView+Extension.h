//
//  UIView+Extension.h
//
//
//  Created by apple on 14-10-7.
//  Copyright (c) 2014年 FJ. All rights reserved.
//


#import <UIKit/UIKit.h>

typedef CGFloat UIScreenType;
static UIScreenType UIScreenType_iPhone5 = 320.0f;
static UIScreenType UIScreenType_iPhone6 = 375.0f;
static UIScreenType UIScreenType_iPhone6P = 414.0f;

@interface UIView (Extension)
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGFloat  right;
@property (nonatomic, assign) CGFloat  buttom;


- (UIView *(^)(CGSize))sSize;
- (UIView *(^)(CGFloat,CGFloat))sTop;
- (UIView *(^)(CGFloat,CGFloat))sBottom;
- (UIView *(^)(CGFloat,CGFloat))sLeft;
- (UIView *(^)(CGFloat,CGFloat))sRight;
- (UIView *(^)(CGFloat,CGFloat))sCenterX;
- (UIView *(^)(CGFloat,CGFloat))sCenterY;
- (UIView *(^)(CGPoint))sPoint;


- (UIView *(^)(NSString *,CGFloat))sSizeWithString;

//size以6s 尺寸为标准
- (UIView *(^)(CGSize))sSizeWithScale;
- (UIView *(^)(CGFloat,CGFloat))sTopWithScale;
- (UIView *(^)(CGFloat,CGFloat))sBottomWithScale;
- (UIView *(^)(CGFloat,CGFloat))sLeftWithScale;
- (UIView *(^)(CGFloat,CGFloat))sRightWithScale;

-(void)setRightMargin:(CGFloat)rightMargin;
- (BOOL)intersectWithView:(UIView *)view;

@end

