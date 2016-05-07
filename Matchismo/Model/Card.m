//
//  Card.m
//  Matchismo
//
//  Created by Waleed Hammam on 5/6/16.
//  Copyright © 2016 Hammam's. All rights reserved.
//

#import "Card.h"

// private declarations
@interface Card()

@end


@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card* card in otherCards){
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
