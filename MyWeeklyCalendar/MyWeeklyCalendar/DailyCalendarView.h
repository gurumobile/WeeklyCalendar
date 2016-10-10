//
//  DailyCalendarView.h
//  MyWeeklyCalendar
//
//  Created by Bogdan on 10/10/16.
//  Copyright © 2016 Bogdan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DailyCalendarViewDelegate <NSObject>

- (void)dailyCalendarViewDidSelect:(NSDate *)date;

@end

@interface DailyCalendarView : UIView

@property (nonatomic, weak) id<DailyCalendarViewDelegate> delegate;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic) BOOL blnSelected;

-(void)markSelected:(BOOL)blnSelected;

@end