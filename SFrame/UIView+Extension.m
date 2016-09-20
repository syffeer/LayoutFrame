//
//  UIView+Extension.m
//
//
//  Created by apple on 14-10-7.
//  Copyright (c) 2014年 FJ. All rights reserved.
//
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#import "UIView+Extension.h"

@implementation UIView (Extension)

#pragma mark - public method
- (UIView *(^)(CGPoint))sPoint{
    return ^id(CGPoint sy_point){
        self.x = sy_point.x;
        self.y = sy_point.y;
        return self;
    };
}

- (UIView *(^)(CGSize))sSize{
    return ^id(CGSize sy_size){
        self.size = sy_size;
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat))sTop{
    return ^id(CGFloat num,CGFloat sy_top){
        self.y = num + sy_top;
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat))sBottom{
    return ^id(CGFloat num,CGFloat sy_bottom){
        self.y = num + sy_bottom;
        
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat))sRight{
    return ^id(CGFloat num,CGFloat sy_bottom){
        self.x = num + sy_bottom;
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat))sLeft{
    return ^id(CGFloat num,CGFloat sy_bottom){
        self.x = num + sy_bottom;
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat))sCenterX{
    return ^id(CGFloat num,CGFloat sy_center){
        self.centerX = sy_center + num;
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat))sCenterY{
    return ^id(CGFloat num,CGFloat sy_center){
        self.centerY = sy_center + num;
        return self;
    };
}

- (UIView *(^)(CGSize))sSizeWithScale{
    return ^id(CGSize sy_size){
        self.size = CGSizeMake(sy_size.width * WIDTH/UIScreenType_iPhone6, sy_size.height * WIDTH/UIScreenType_iPhone6);
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat))sTopWithScale{
    return ^id(CGFloat num,CGFloat sy_top){
        self.y = num * WIDTH/UIScreenType_iPhone6 + sy_top;
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat))sBottomWithScale{
    return ^id(CGFloat num,CGFloat sy_bottom){
        self.y = num * WIDTH /UIScreenType_iPhone6 + sy_bottom;
        
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat))sRightWithScale{
    return ^id(CGFloat num,CGFloat sy_bottom){
        self.x = num * WIDTH/UIScreenType_iPhone6 + sy_bottom;
        
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat))sLeftWithScale{
    return ^id(CGFloat num,CGFloat sy_bottom){
        self.x = num * WIDTH/UIScreenType_iPhone6 + sy_bottom;
        return self;
    };
}

- (UIView *(^)(NSString *,CGFloat))sSizeWithString{

    return ^id(NSString *sy_str,CGFloat maxW){
        
        if ([self isKindOfClass:[UILabel class]]) {
            UILabel *lab = (UILabel *)self;
            CGSize size = [sy_str boundingRectWithFont:lab.font maxW:maxW];
            self.size = size;
        }
        return self;
    };
}
#pragma mark - setter && getter

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
}

-(void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

-(CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}


-(void)setRightMargin:(CGFloat)rightMargin
{
    UIView *superView = self.superview;
    CGFloat right = superView.width - rightMargin;
    self.right = right;
}




- (void)setButtom:(CGFloat)buttom {
    CGRect frame = self.frame;
    frame.origin.y = buttom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)buttom {
    return self.frame.origin.y + self.frame.size.height;
}

- (BOOL)intersectWithView:(UIView *)view
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    CGRect selfRect = [self convertRect:self.bounds toView:window];
    CGRect viewRect = [view convertRect:view.bounds toView:window];
    return CGRectIntersectsRect(selfRect, viewRect);
}

@end
