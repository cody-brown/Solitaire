//
//  PlayingTable.m
//  Solitaire
//
//  Created by Cody Brown on 11/3/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import "PlayingTable.h"

@implementation PlayingTable


-(BOOL)moveCard:(PlayingCard *)card from:(NSArray *)oldLocation to:(NSArray *)newLocation
{
    if([newLocation isEqualToArray:self.deck] ||
       [newLocation isEqualToArray:self.displayedDeck] ||
       [newLocation isEqualToArray:self.tableau] ||
       [newLocation isEqualToArray:self.foundation]) { //Cannot add to the deck, displayed deck, or the general foundation/tableau (must add to specific column)
        return false;
    } else {
        if([self.foundation containsObject:newLocation] && [self.tableau containsObject:oldLocation]) { //Move from tableau to foundation
            if([oldLocation containsObject:card]) {
                PlayingCard *destinationCard = [newLocation lastObject];
                if(!destinationCard) { //Card must be an ace to be moved
                    if(card.rank == 1) {
                        
                    }
                } else {
                    
                }
            }
        }
    }
}


@end
