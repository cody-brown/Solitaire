//
//  PlayingCardDeck.m
//  Solitaire
//
//  Created by Cody Brown on 11/2/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import "PlayingCardDeck.h"

@implementation PlayingCardDeck

#pragma mark - Init methods
-(id)init
{
    if(self = [super init])
    {
        self.cards = [NSMutableArray arrayWithArray:[PlayingCardDeck createDeck]];
    }
    return self;
}

#pragma mark - Get/Set Methods

-(NSUInteger)numCards
{
    return [self.cards count];
}

#pragma mark - Instance Methods

-(void)resetDeck
{
    self.cards = [NSMutableArray arrayWithArray:[PlayingCardDeck createDeck]];
}


-(void)shuffle
{
    for (NSUInteger i = 0; i < self.numCards; ++i) {
        NSInteger remainingCount = self.numCards - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [self.cards exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
}

-(PlayingCard *)drawTopCard
{
    if([self.cards count] > 0) {
        PlayingCard *returnCard = [self.cards objectAtIndex:0];
        [self.cards removeObjectAtIndex:0];
        return returnCard;
    }
    return nil;
}

-(PlayingCard *)drawRandomCard
{
    if([self.cards count] > 0) {
        NSInteger index = arc4random_uniform((u_int32_t) self.numCards);
        PlayingCard *returnCard = [self.cards objectAtIndex:index];
        [self.cards removeObjectAtIndex:index];
        return returnCard;
    }
    return nil;
}

-(PlayingCard *)peekTopCard {
    return [self.cards objectAtIndex:0];
}

-(void)addCard:(PlayingCard *)card
{
    [self.cards insertObject:card atIndex:self.numCards];
}

-(void)addCards:(NSSet *)cards {
    for(PlayingCard *card in cards) {
        [self addCard: card];
    }
}

/*
 *  Removes the first instance of the card and returns true
 *  if the card exists in the deck.
 */
-(BOOL)removeCard:(PlayingCard *)card
{
    NSUInteger initialCount = self.numCards;
    [self.cards removeObject:card];
    return self.numCards < initialCount;
}

#pragma mark - Helper Methods

+(NSArray *)createDeck
{
    NSMutableArray *cards = [[NSMutableArray alloc] init];
    for(NSString *suit in [PlayingCard validSuits]) {
        for(NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
            PlayingCard *pc = [[PlayingCard alloc] initWithRank:rank andSuit:suit];
            NSString *frontImageName = [NSString stringWithFormat:@"%@-%@", [pc getSymbolForRank], [pc getNameForSuit]];
            pc.frontImage = [UIImage imageNamed:frontImageName];
            pc.backImage = [UIImage imageNamed:@"red-vertical"];
            [cards insertObject:pc atIndex:[cards count]];
        }
    }
    return cards;
}


@end
