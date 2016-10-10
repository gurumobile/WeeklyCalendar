//
//  ViewController.m
//  MyWeeklyCalendar
//
//  Created by Bogdan on 10/10/16.
//  Copyright © 2016 Bogdan. All rights reserved.
//

#import "ViewController.h"
#import "WeeklyCalendarView.h"

static CGFloat CALENDER_VIEW_HEIGHT = 150.f;

@interface ViewController () <WeeklyCalendarViewDelegate>

@property (nonatomic, strong) WeeklyCalendarView *calendarView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.calendarView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (WeeklyCalendarView *)calendarView {
    if (!_calendarView) {
        _calendarView = [[WeeklyCalendarView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, CALENDER_VIEW_HEIGHT)];
        _calendarView.delegate = self;
    }
    return _calendarView;
}

#pragma mark -
#pragma mark - WeeklyCalendarViewDelegate Method...

- (NSDictionary *)CLCalendarBehaviorAttributes {
    return @{
             CLCalendarWeekStartDay : @2,                 //Start Day of the week, from 1-7 Mon-Sun -- default 1
             //             CLCalendarDayTitleTextColor : [UIColor yellowColor],
             //             CLCalendarSelectedDatePrintColor : [UIColor greenColor],
             };
}

- (void)dailyCalendarViewDidSelect:(NSDate *)date {
    //You can do any logic after the view select the date
}

@end