//
//  DemoViewController.m
//  algorithms-in-objc
//
//  Created by Fang Chen on 4/20/12.
//  Copyright (c) 2012 GoldenGloves. All rights reserved.
//

#import "DemoViewController.h"
#import "Algorithms.h"

@implementation DemoViewController



- (void)viewDidLoad
{
    self.title = @"Algorithms in Objective-C";
    
    [Algorithms findGreatestContiguousSumInArray:[self demoArrayOfNumbers]];
    
    int fewestCoins = [Algorithms fewestCoinsToMakeChangeForMoney:.49];
    NSLog(@"%i",fewestCoins);
    
    NSLog(@"60 choose 2: %i", [Algorithms forNObjects:60 choose:2]);
}

- (NSArray *)demoArrayOfNumbers
{
    NSNumber *zero = [NSNumber numberWithInt:2];
    NSNumber *one = [NSNumber numberWithInt:3];
    NSNumber *two = [NSNumber numberWithInt:-2];
    NSNumber *three = [NSNumber numberWithInt:1];
    NSNumber *four = [NSNumber numberWithInt:-9];
    NSNumber *five = [NSNumber numberWithInt:5];
    NSNumber *six = [NSNumber numberWithInt:1];
    NSNumber *seven = [NSNumber numberWithInt:-2];
    NSNumber *eight = [NSNumber numberWithInt:3];
    NSNumber *nine = [NSNumber numberWithInt:-1];
    
    NSArray *array = [NSArray arrayWithObjects:zero,one,two,three,four,five,six,seven,eight,nine, nil];
    return array;
}

- (NSSet *)demoSetOfCoins
{
    NSNumber *penny = [NSNumber numberWithDouble:.01];
    NSNumber *nickel = [NSNumber numberWithDouble:.05];
    NSNumber *dime = [NSNumber numberWithDouble:.1];
    NSNumber *quarter = [NSNumber numberWithDouble:.25];
    NSSet *setOfCoins = [NSSet setWithObjects:penny,nickel,dime,quarter, nil];
    return setOfCoins;
}

- (NSNumber *)aDollar
{
    NSNumber *dollar = [NSNumber numberWithDouble:1];
    return dollar;
}

@end
