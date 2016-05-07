//
//  Card.h
//  Matchismo
//
//  Created by Waleed Hammam on 5/6/16.
//  Copyright © 2016 Hammam's. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *) otherCards;

@end
