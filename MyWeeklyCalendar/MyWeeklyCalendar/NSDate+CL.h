//
//  NSDate+CL.h
//  CLWeeklyCalendarView
//
//  Created by Bogdan on 10/10/16.
//  Copyright © 2016 Bogdan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate(CL)

- (NSDate *)addDays:(NSInteger)day;
- (NSDate *)getWeekStartDate: (NSInteger)weekStartIndex;
- (NSString *)getDayOfWeekShortString;
- (NSString *)getDateOfMonth;
- (BOOL) isSameDateWith:(NSDate *)dt;
- (BOOL)isDateToday;
- (BOOL)isWithinDate:(NSDate *)earlierDate toDate:(NSDate *)laterDate;
- (BOOL)isPastDate;

@end
