//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Waleed Hammam on 5/7/16.
//  Copyright © 2016 Hammam's. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

- (instancetype)initWithCardCount: (NSUInteger) count
                        usingDeck: (Deck *) deck;
@property (nonatomic, readonly) NSInteger score;

- (void)chooseCardAtIndex: (NSUInteger) index;
- (Card *)CardAtIndex: (NSUInteger) index;

@end
