//
//  CustomEraiView.h
//  自定义电子围栏控件
//
//  Created by apple on 15/8/1.
//  Copyright (c) 2015年 com.agewnet. All rights reserved.
//

#import <UIKit/UIKit.h>



@protocol CustomErailDelegate <NSObject>

-(void)customErailButtonON:(NSInteger)index;



@end


@interface CustomEraiView : UIView

@property (nonatomic,weak)UIButton *chooseButton;
@property (nonatomic,assign)NSInteger chooseIndex;
@property (nonatomic,assign)UIColor *backGroundColor;
@property (nonatomic,weak)id<CustomErailDelegate>delegate;



@end

