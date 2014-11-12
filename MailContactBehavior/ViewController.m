//
//  ViewController.m
//  MailContactBehavior
//
//  Created by redhat' iMac on 14/11/12.
//  Copyright (c) 2014年 lxzhh. All rights reserved.
//

#import "ViewController.h"
#import "STContactButton.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet STContactButton *button;
@property (nonatomic, strong)NSArray *buttons;
@property (weak, nonatomic) IBOutlet UIView *headerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (int i = 0; i<10; i++) {
        STContactButton *button = [[STContactButton alloc] initWithTitle:@"asdfsadsfd"];
//        [button setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.headerView addSubview:button];
    }
}


- (void)layoutContactView{
    NSInteger row = 0;
    CGFloat startY = 20;
    [self.buttons enumerateObjectsUsingBlock:^(UIButton *button, NSUInteger idx, BOOL *stop) {
        CGRect frame = button.frame;
        if (idx == 0) {
            button.frame = CGRectMake(0, startY, frame.size.width, frame.size.height);
        }else{
            UIButton *lastButton = self.buttons[idx -1];
            CGRect lastButtonFrame = lastButton.frame;
            button.frame = CGRectMake(CGRectGetMaxX(lastButtonFrame)+3, CGRectGetMinY(lastButtonFrame), frame.size.width, frame.size.height);
        }
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
