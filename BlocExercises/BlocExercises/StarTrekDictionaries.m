//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries
//{
//    "name": "Nog",
//    "rank": "Lieutenant junior grade",
//    "information": "the first Ferengi to enter Starfleet",
//    "favorite drink": "root beer",
//    "quote": "Hear all, trust nothing."
//}

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    id faveDrink = [characterDictionary objectForKey:@"favorite drink"];
    
    if(faveDrink) {
        return faveDrink;
    }
    
    return nil;
//    return @"";
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
//    NSMutableArray *drinks = [NSMutableArray array];
    NSMutableArray *drinks = [@[] mutableCopy];
    
    for (NSDictionary *character in charactersArray) {
        if (character[@"favorite drink"]) {
            [drinks addObject:character[@"favorite drink"]];
        }
    }
    
    return (NSArray *)drinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *newDict = [characterDictionary mutableCopy];
    
    NSString *quote = @"It's like gogurt to stay";
    
//    newDict[@"quote"] = quote;
    [newDict setObject:quote forKey:@"quote"];
    
    return newDict;
}
@end
