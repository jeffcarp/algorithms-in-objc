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

+ (int)fewestCoinsToMakeChangeForMoney:(double)anAmountOfMoney;                             
{    
    double quarter = .25;
    double dime = .10;
    double nickel = .05;
    double penny = .01;
    
    double remainingAmount = 0;
    
    if (quarter <= anAmountOfMoney) {
        remainingAmount = anAmountOfMoney - quarter;
    } else if (dime <= anAmountOfMoney) {
        remainingAmount = anAmountOfMoney - dime;
    } else if (nickel <= anAmountOfMoney) {
        remainingAmount = anAmountOfMoney - nickel;
    } else if (penny <= anAmountOfMoney) {
        remainingAmount = anAmountOfMoney - penny;
    }

    if (remainingAmount > 0) {
        return 1+[self fewestCoinsToMakeChangeForMoney:remainingAmount];
    } else {
        return 1;
    }
}

@end
