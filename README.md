# XMTimePickerView
时间段选择器：年月  包括至今

![Platform](https://wx1.sinaimg.cn/mw690/e067b31fgy1flond3n1p0j208c0i2wet.jpg)

# 一，使用步骤
1，导入XMTimePickerView文件夹

2，引用#import "XMTimePickerView.h"头文件

3，使用方法：
```
XMTimePickerView *picker = [[XMTimePickerView alloc] init];

picker.delegate = self;
    
//    picker.isShowToday = NO; // 是否显示今天

//    picker.minimumDate = [self xm_dataWithTime:@"1493568000000"];  // 最小值时间时间戳

[picker show];
```

# 二，主要属性
```
/** 是否显示今天 */
@property (nonatomic, assign) BOOL isShowToday;

/** 最小时间 */
@property (nullable, weak, nonatomic) NSDate *minimumDate;

/** 代理 */
@property (nonatomic, assign) id<XMTimePickerViewDelegate> delegate;

/** 显示 */
- (void)show;
```
# 三，更多

1，如果觉得可以，请给个星星✨✨✨✨✨，谢谢🙏

2，我的简书http://www.jianshu.com/p/6e82fd2fcb01
