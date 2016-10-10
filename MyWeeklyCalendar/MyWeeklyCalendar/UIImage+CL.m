//
//  UIImage+CL.m
//  CLWeeklyCalendarView
//
//  Created by Bogdan on 10/10/16.
//  Copyright © 2016 Bogdan. All rights reserved.
//

#import "UIImage+CL.h"
#import "UIColor+CL.h"

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)

@implementation UIImage(CL)

+ (UIImage *)calendarBackgroundImage:(float)height {
    UIColor *topColor = [UIColor colorWithHex:0xffaa00];
    UIColor *bottomColor = [UIColor colorWithHex:0xaabb00]; 
    
    return [self gradientImageWithBounds:CGRectMake(0, 0, SCREEN_WIDTH, height) colors:@[(id)[topColor CGColor], (id)[bottomColor CGColor]]];
}

+ (UIImage *)gradientImageWithBounds:(CGRect)bounds colors:(NSArray *)colors {
    CALayer * bgGradientLayer = [self gradientBGLayerForBounds:bounds colors:colors];
    UIGraphicsBeginImageContext(bgGradientLayer.bounds.size);
    [bgGradientLayer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * bgAsImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return bgAsImage;
}

+ (CALayer *)gradientBGLayerForBounds:(CGRect)bounds colors:(NSArray *)colors {
    CAGradientLayer * gradientBG = [CAGradientLayer layer];
    gradientBG.frame = bounds;
    gradientBG.colors = colors;
    
    return gradientBG;
}

@end