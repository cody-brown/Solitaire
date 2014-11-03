//
//  PlayingTable.h
//  Solitaire
//
//  Created by Cody Brown on 11/3/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCardDeck.h"

@interface PlayingTable : NSObject

@property (strong, nonatomic) NSMutableArray *deck;
@property (strong, nonatomic) NSMutableArray *displayedDeck;
@property (strong, nonatomic) NSMutableArray *foundation;
@property (strong, nonatomic) NSMutableArray *f1;
@property (strong, nonatomic) NSMutableArray *f2;
@property (strong, nonatomic) NSMutableArray *f3;
@property (strong, nonatomic) NSMutableArray *f4;
@property (strong, nonatomic) NSMutableArray *tableau;
@property (strong, nonatomic) NSMutableArray *t1;
@property (strong, nonatomic) NSMutableArray *t2;
@property (strong, nonatomic) NSMutableArray *t3;
@property (strong, nonatomic) NSMutableArray *t4;
@property (strong, nonatomic) NSMutableArray *t5;
@property (strong, nonatomic) NSMutableArray *t6;
@property (strong, nonatomic) NSMutableArray *t7;

-(BOOL)moveCard:(PlayingCard *)card from:(NSArray *)oldLocation to:(NSArray *)newLocation;

@end
