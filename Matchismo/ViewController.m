//
//  ViewController.m
//  Matchismo
//
//  Created by Waleed Hammam on 5/6/16.
//  Copyright © 2016 Hammam's. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()
@property (nonatomic, strong) Deck *deck;
@property (nonatomic, strong) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@end

@implementation ViewController

- (CardMatchingGame *) game
{
    if (!_game) {
        _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    }
    return _game;
}

- (Deck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}


- (IBAction)touchCardButton:(UIButton *)sender
{
    int cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];

}

- (void) updateUI
{
    for (UIButton *cardButton in self.cardButtons){
        int cardIndex = [self.cardButtons indexOfObject:cardButton];
        Card* card = [self.game CardAtIndex:cardIndex];
        [cardButton setTitle:[self titleforCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageCard:card]forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)self.game.score];
}

- (NSString *) titleforCard:(Card*) card
{
    return card.isChosen ? card.contents : @"";
}

- (UIImage *) backgroundImageCard:(Card *) card
{
    return [UIImage imageNamed: card.isChosen ? @"cardfront" : @"cardback"];
}

@end
