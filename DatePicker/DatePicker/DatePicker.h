//
//  DatePicker.h
//  DatePicker
//
//  Created by jsmnzn on 2018/10/30.
//  Copyright © 2018年 test. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM (NSInteger ,PickerType){
    
    PickerTypeDay = 3,//年月日
    PickerTypeHour,//年月日时
    PickerTypeMinute,//年月日时分
    PickerTypeMinuteHour,//时分
    PickerTypeMinuteDay,//日时分
    PickerTypeMinuteMonth,//月日时分
};



@interface DatePicker : UIView

+(instancetype)shareManager;
-(instancetype)init;

/*
 
 pickerType 时间选择器类型
 title      标题（可不传）
 time       传入的值会在选择器中选中展示（可不传）
 backTime   返回时间（例：yyyy:MM:dd:HH:mm）
 */
-(void)showWithType:(PickerType)pickerType title:(NSString * _Nullable)title time:(NSString * _Nullable )timeStr backTime:(void (^)(NSString * backTimeStr))backTime;



@end

NS_ASSUME_NONNULL_END
