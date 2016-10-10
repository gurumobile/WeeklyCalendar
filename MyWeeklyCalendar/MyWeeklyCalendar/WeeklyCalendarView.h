//
//  WeeklyCalendarView.h
//  MyWeeklyCalendar
//
//  Created by Bogdan on 10/10/16.
//  Copyright © 2016 Bogdan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WeeklyCalendarViewDelegate <NSObject>

extern NSString *const CLCalendarWeekStartDay;
extern NSString *const CLCalendarDayTitleTextColor;
extern NSString *const CLCalendarSelectedDatePrintFormat;
extern NSString *const CLCalendarSelectedDatePrintColor;
extern NSString *const CLCalendarSelectedDatePrintFontSize;
extern NSString *const CLCalendarBackgroundImageColor;

- (NSDictionary *)CLCalendarBehaviorAttributes;
-(void)dailyCalendarViewDidSelect:(NSDate *)date;

@end

@interface WeeklyCalendarView : UIView

@property (nonatomic, weak) id<WeeklyCalendarViewDelegate> delegate;
@property (nonatomic, strong) NSDate *selectedDate;

- (void)redrawToDate:(NSDate *)dt;
- (void)updateWeatherIconByKey:(NSString *)key;

@end
