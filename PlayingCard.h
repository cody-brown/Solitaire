//
//  PlayingCard.h
//  Solitaire
//
//  Created by Cody Brown on 11/1/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
@property (strong, nonatomic) UIColor *color;

-(id)initWithRank:(NSUInteger)rank andSuit:(NSString *)suit;

-(NSString *)getSymbolForRank;
-(NSString *)getNameForSuit;

+(NSArray *)validSuits;
+(NSArray *)validRanks;
+(NSUInteger)maxRank;

@end
