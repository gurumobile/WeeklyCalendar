//
//  UIColor+CL.m
//  CLWeeklyCalendarView
//
//  Created by Bogdan on 10/10/16.
//  Copyright © 2016 Bogdan. All rights reserved.
//

#import "UIColor+CL.h"

@implementation UIColor(CL)

+ (UIColor *)colorWithHex:(unsigned long)col {
    unsigned char r, g, b;
    b = col & 0xFF;
    g = (col >> 8) & 0xFF;
    r = (col >> 16) & 0xFF;
    
    return [UIColor colorWithRed:(double)r/255.0f green:(double)g/255.0f blue:(double)b/255.0f alpha:1];
}

@end
