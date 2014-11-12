//
//  STContactButton.m
//  MailContactBehavior
//
//  Created by redhat' iMac on 14/11/12.
//  Copyright (c) 2014年 lxzhh. All rights reserved.
//

#import "STContactButton.h"

@implementation STContactButton
- (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
#define blue7color [UIColor colorWithRed:0.149 green:0.596 blue:0.839 alpha:1.000]

-(void)rightAlignImage{
    [self sizeToFit];
    self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, self.imageView.frame.size.width);
    self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, -self.titleLabel.frame.size.width);
}


-(void)customWithTitle:(NSString *)title image:(UIImage *)image{
    [self setTitleColor:blue7color forState:UIControlStateNormal];
    
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[self imageWithColor:blue7color] forState:UIControlStateHighlighted];
    [self setTitle:title forState:UIControlStateNormal];
    [self setImage:image forState:UIControlStateNormal];
    
    self.layer.cornerRadius = 3.0f;
    self.layer.masksToBounds = YES;
}
-(id)initWithTitle:(NSString *)title image:(UIImage *)image{
    if (self = [super init]) {
        [self customWithTitle:title image:[UIImage imageNamed:@"indicator"]];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
//
        [self customWithTitle:nil image:nil];
    }
    return self;
}

- (void)layoutSubviews
{
    // Allow default layout, then adjust image and label positions
    [super layoutSubviews];
    
    UIImageView *imageView = [self imageView];
    UILabel *label = [self titleLabel];
    
    CGRect imageFrame = imageView.frame;
    CGRect labelFrame = label.frame;
    
    labelFrame.origin.x = 5;
    imageFrame.origin.x = labelFrame.origin.x + CGRectGetWidth(labelFrame) + 2;
    
    imageView.frame = imageFrame;
    label.frame = labelFrame;
}
@end
