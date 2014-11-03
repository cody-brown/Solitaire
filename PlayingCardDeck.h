//
//  PlayingCardDeck.h
//  Solitaire
//
//  Created by Cody Brown on 11/2/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import "Deck.h"
#import "PlayingCard.h"

@interface PlayingCardDeck : NSObject 

@property (strong, nonatomic) NSMutableArray *cards;
@property (nonatomic, readonly) NSUInteger numCards;

-(void)shuffle;
-(PlayingCard *)drawTopCard;
-(PlayingCard *)drawRandomCard;
-(PlayingCard *)peekTopCard;
-(void)addCard:(PlayingCard *)card;
-(void)addCards:(NSSet *)cards;
-(BOOL)removeCard:(PlayingCard *)card;

-(void)resetDeck;

@end
