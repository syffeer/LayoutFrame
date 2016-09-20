//
//  NSString+Ext.m
//  SearchKey
//
//  Created by sy on 16/9/7.
//  Copyright © 2016年 KingTeam. All rights reserved.
//

#import "NSString+Ext.h"
#import <UIKit/UIKit.h>
@implementation NSString (Ext)

- (CGSize)boundingRectWithFont:(UIFont *)font maxW:(CGFloat)maxW{
  
        NSDictionary *attribute = @{NSFontAttributeName: font};
        
        CGSize retSize = [self boundingRectWithSize:CGSizeMake(maxW, MAXFLOAT)
                                                 options:
                          NSStringDrawingTruncatesLastVisibleLine |
                          NSStringDrawingUsesLineFragmentOrigin |
                          NSStringDrawingUsesFontLeading
                                              attributes:attribute
                                                 context:nil].size;
        
        return retSize;
    
}
@end
