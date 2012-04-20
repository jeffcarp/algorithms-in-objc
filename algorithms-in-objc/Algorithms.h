//
//  Algorithms.h
//  algorithms-in-objc
//
//  Created by Fang Chen on 4/20/12.
//  Copyright (c) 2012 GoldenGloves. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Algorithms : NSObject

/* Kadane's maximum subarray problem
 http://en.wikipedia.org/wiki/Maximum_subarray_problem
 http://en.wikipedia.org/wiki/Dynamic_programming
 */
+ (NSNumber *)findGreatestContiguousSumInArray:(NSArray *)arrayOfNSNumbers;



@end
