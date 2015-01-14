//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSRange cheeseSuffixRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if(cheeseSuffixRange.location != NSNotFound) {
        NSString *cheeseNameWithoutCheeseSuffix = [cheeseName stringByReplacingCharactersInRange:cheeseSuffixRange
                                                                                  withString:@""];
        return cheeseNameWithoutCheeseSuffix;
    }
    return cheeseName;
//    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        return [NSString stringWithFormat:@"%d cheese", (int)cheeseCount];
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        return [NSString stringWithFormat:@"%d cheeses", (int)cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
