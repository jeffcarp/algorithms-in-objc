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

- (void)viewDidLoad
{
    [Algorithms findGreatestContiguousSumInArray:[self demoArrayOfNumbers]];
}

@end
