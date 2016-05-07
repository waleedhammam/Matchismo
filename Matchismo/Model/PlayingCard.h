//
//  PlayingCard.h
//  Matchismo
//
//  Created by Waleed Hammam on 5/6/16.
//  Copyright © 2016 Hammam's. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
