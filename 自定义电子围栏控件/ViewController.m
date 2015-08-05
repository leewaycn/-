//
//  ViewController.m
//  自定义电子围栏控件
//
//  Created by apple on 15/8/1.
//  Copyright (c) 2015年 com.agewnet. All rights reserved.
//

#import "ViewController.h"

#import "CustomEraiView.h"


@interface ViewController ()<CustomErailDelegate>


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CustomEraiView *erail = [[CustomEraiView alloc]initWithFrame:CGRectMake(0, 100, 300, 60)];
    erail.userInteractionEnabled =  YES;
    erail.delegate = self;
    
    [self.view addSubview:erail];
    
}

-(void)customErailButtonON:(NSInteger)index
{
    NSLog(@"%ld",index);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
