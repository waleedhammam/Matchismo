//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Waleed Hammam on 5/6/16.
//  Copyright © 2016 Hammam's. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype) init
{
    self = [super init];
    
    if (self) {
        
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card]; 
            }
        }
    }
    
    return self;
}

@end
