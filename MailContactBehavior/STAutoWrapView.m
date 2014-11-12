//
//  STAutoWrapView.m
//  MailContactBehavior
//
//  Created by redhat' iMac on 14/11/12.
//  Copyright (c) 2014年 lxzhh. All rights reserved.
//

#import "STAutoWrapView.h"



@implementation STAutoWrapView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews{
    
}

- (CGRect)enumerateItemRectsForLayoutWidth:(CGFloat)layoutWidth
{
//    layoutWidth = MAX(layoutWidth, itemSize.width);
//    
//    CGFloat x = 0, y = 0;
//    for (NSUInteger i = 0; i < self.itemCount; i++) {
//        if (x > layoutWidth - itemSize.width) {
//            y += itemSize.height;
//            x = 0;
//        }
//        
//        block((CGRect){{x, y}, itemSize});
//        
//        x += itemSize.width;
//    }
}
@end
