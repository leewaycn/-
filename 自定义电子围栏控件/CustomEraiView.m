//
//  CustomEraiView.m
//  自定义电子围栏控件
//
//  Created by apple on 15/8/1.
//  Copyright (c) 2015年 com.agewnet. All rights reserved.
//

#import "CustomEraiView.h"

@implementation CustomEraiView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.userInteractionEnabled = YES;
        
        
        
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        imageView.backgroundColor = [UIColor blueColor];
        [self addSubview:imageView];
        imageView.userInteractionEnabled = YES;
        CGFloat buttonGap;
        CGFloat buttonWidh = frame.size.width/4;
        
        
        for (int i = 0; i<4; i++) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.backgroundColor = [UIColor purpleColor];
            
            [imageView addSubview:button];
            
            button.frame = CGRectMake(0, 0, buttonWidh/2, buttonWidh/2);
            button.center = CGPointMake(i*buttonWidh+buttonWidh/2, frame.size.height/2);
            button.tag = 100+i;
            [button addTarget:self action:@selector(chooseButtonON:) forControlEvents:UIControlEventTouchUpInside];
            
            [button setTitle:@"ON" forState:UIControlStateSelected];
            [button setTitle:@"OFF" forState:UIControlStateNormal];
            if (i==0) {
                button.selected = YES;
                button.backgroundColor = [UIColor greenColor];
            }
            
        }
        
    }
    return self;
}
- (void)drawRect:(CGRect)rect {

    
    
}
-(void) chooseButtonON:(UIButton*)sender
{
    NSLog(@"%ld",sender.tag);
    _chooseIndex  = sender.tag-100;
    
    for (int i = 0; i<4; i++) {
        UIButton *button = (UIButton*)[self viewWithTag:i+100];
        button.selected = NO;
        button.backgroundColor = [UIColor purpleColor];
        if (i == sender.tag - 100) {
            button.selected = YES;
            button.backgroundColor = [UIColor greenColor];
        }
    }
    
    
    
    if (_delegate && [_delegate respondsToSelector:@selector(customErailButtonON:)]) {
        [_delegate customErailButtonON:_chooseIndex];
         
    }
    
}

@end
