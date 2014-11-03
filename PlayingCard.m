//
//  PlayingCard.m
//  Solitaire
//
//  Created by Cody Brown on 11/1/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

#pragma mark - Init Methods

-(id)initWithRank:(NSUInteger)rank andSuit:(NSString *)suit
{
    if (self = [super init]) {
        if(rank > 0 && rank <= [PlayingCard maxRank] && [[PlayingCard validSuits] containsObject:suit]) {
            self.rank = rank;
            self.suit = suit;
        }
    }
    return self;
}

-(id)init
{
    return [self initWithRank:0 andSuit:@""];
}

#pragma mark - Get/Set Methods

-(NSString *)contents
{
    return [NSString stringWithFormat:@"%lu%@", self.rank, self.suit ];
}

-(UIColor *)color
{
    if([self.suit isEqualToString:@"♥"] || [self.suit isEqualToString:@"♦"]) {
        return [UIColor redColor];
    }
    return [UIColor blackColor];
}

#pragma mark - Instance methods

-(NSString *)getSymbolForRank
{
    return [[PlayingCard validRanks] objectAtIndex:self.rank - 1];
}

-(NSString *)getNameForSuit
{
    switch ([[PlayingCard validSuits] indexOfObject: self.suit]) {
        case 0:
            return @"Diamonds";
            break;
        case 1:
            return @"Hearts";
            break;
        case 2:
            return @"Spades";
            break;
        case 3:
            return @"Clubs";
            break;
        default:
            return @"";
            break;
    }
}

#pragma mark - Class methods

+(NSArray *)validSuits
{
    return @[@"♦", @"♥", @"♠", @"♣"];
}

+(NSArray *)validRanks
{
    return @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+(NSUInteger)maxRank
{
    return [[self validRanks] count];
}

@end
