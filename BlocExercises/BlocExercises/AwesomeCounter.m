//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *numStr = @"";
    if (otherNumber > number) {
        // otherNumber is high num
        for(NSInteger i = number; i <= otherNumber; i++) {
            numStr = [numStr stringByAppendingString:[NSString stringWithFormat:@"%ld", (long)i]];
        }
    } else {
        for(NSInteger i = otherNumber; i <= number; i++) {
            numStr = [numStr stringByAppendingString:[NSString stringWithFormat:@"%ld", (long)i]];
        }
    }
    return numStr;
}

@end
