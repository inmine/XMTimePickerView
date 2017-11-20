//
//  ViewController.m
//  XMTimePickerView
//
//  Created by min on 2017/11/17.
//  Copyright © 2017年 min. All rights reserved.
//

#import "ViewController.h"
#import "XMTimePickerView.h"

@interface ViewController ()<XMTimePickerViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"XM时间选择器";
    
    UIButton *btn = [[UIButton alloc] init];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"点我啊" forState:UIControlStateNormal];
    btn.frame = CGRectMake(80, 200, 100, 44);
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick{
    
    XMTimePickerView *picker = [[XMTimePickerView alloc] init];
    picker.delegate = self;
//    picker.isShowToday = NO; // 是否显示今天
//    picker.minimumDate = [self xm_dataWithTime:@"1493568000000"];  // 最小值时间时间戳
    [picker show];
}

#pragma mark - XMTimePickerViewDelegate
- (void)xm_didSelectTimePickerView:(XMTimePickerView *)pickerView andTime:(NSString *)time{
    
    NSLog(@"选中时间 %@",time);
}

- (NSDate *)xm_dataWithTime:(NSString *)time{
    
    long long times = [time longLongValue];
    times = times / 1000;
    NSDate *timeData = [[NSDate alloc]initWithTimeIntervalSince1970:times];
    return timeData;
}

@end
