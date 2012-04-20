//
//  Algorithms.m
//  algorithms-in-objc
//
//  Created by Fang Chen on 4/20/12.
//  Copyright (c) 2012 GoldenGloves. All rights reserved.
//

#import "Algorithms.h"

@implementation Algorithms

+ (NSNumber *)findGreatestContiguousSumInArray:(NSArray *)arrayOfNSNumbers
{
    int max_so_far = 0;
    int max_running = 0;
    for (NSNumber *num in arrayOfNSNumbers) {
        int number = [num intValue];
        max_running = MAX(number, max_running+number);
        max_so_far = MAX(max_so_far, max_running);
    }
    NSNumber *greatestContiguousSum = [NSNumber numberWithInt:max_so_far];
    NSLog(@"greatestContiguousSum = %@",greatestContiguousSum);
    return greatestContiguousSum;
}

@end
