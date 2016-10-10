//
//  NSDictionary+CL.m
//  CLWeeklyCalendarView
//
//  Created by Bogdan on 10/10/16.
//  Copyright © 2016 Bogdan. All rights reserved.
//

#import "NSDictionary+CL.h"

@implementation NSDictionary (CL)

- (id)objectForKeyWithNil:(id)aKey {
    if(!self) return nil;

    id object = [self objectForKey:aKey];
    if (object == [NSNull null]) {
        return nil;
    }
    return object;
}

@end