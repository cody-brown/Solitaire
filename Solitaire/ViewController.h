//
//  ViewController.h
//  Solitaire
//
//  Created by Cody Brown on 11/1/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "PlayingCardDeck.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) PlayingCardDeck *pcd;
@property (strong, nonatomic) NSMutableArray *imageViews;
@property (strong, nonatomic) NSMutableArray *deckImageViews;
@property (strong, nonatomic) NSMutableArray *displayedDeckImageViews;
@property (strong, nonatomic) NSMutableArray *foundationImageViews;
@property (strong, nonatomic) NSMutableArray *f1ImageViews;
@property (strong, nonatomic) NSMutableArray *f2ImageViews;
@property (strong, nonatomic) NSMutableArray *f3ImageViews;
@property (strong, nonatomic) NSMutableArray *f4ImageViews;
@property (strong, nonatomic) NSMutableArray *tableauImageViews;
@property (strong, nonatomic) NSMutableArray *t1ImageViews;
@property (strong, nonatomic) NSMutableArray *t2ImageViews;
@property (strong, nonatomic) NSMutableArray *t3ImageViews;
@property (strong, nonatomic) NSMutableArray *t4ImageViews;
@property (strong, nonatomic) NSMutableArray *t5ImageViews;
@property (strong, nonatomic) NSMutableArray *t6ImageViews;
@property (strong, nonatomic) NSMutableArray *t7ImageViews;

@end

