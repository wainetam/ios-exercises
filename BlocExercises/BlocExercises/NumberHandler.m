//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
    float doubleNum = [number floatValue] * 2;
    return [NSNumber numberWithFloat:doubleNum];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    int larger;
    int smaller;
    
    if(number >= otherNumber) {
        larger = number;
        smaller = otherNumber;
    } else {
        larger = otherNumber;
        smaller = number;
    }
    
    NSMutableArray *numArray = [NSMutableArray new];
    
    for (int i = smaller; i <= otherNumber; i++) {
        [numArray addObject:[NSNumber numberWithInt:i]];
    }
    
    return numArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSSortDescriptor *inc = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    
    NSMutableArray *numArray = [arrayOfNumbers mutableCopy];
    [numArray sortUsingDescriptors:@[inc]];
    
//    NSLog(@"%@", numArray);
    
    return [[numArray objectAtIndex:0] integerValue];
}

@end
