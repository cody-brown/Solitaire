//
//  ViewController.m
//  Solitaire
//
//  Created by Cody Brown on 11/1/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import "ViewController.h"

//@property (strong, nonatomic) PlayingCardDeck *pcd;
//@property (strong, nonatomic) NSMutableArray *imageViews;
//@property (strong, nonatomic) NSMutableArray *deckImageViews;
//@property (strong, nonatomic) NSMutableArray *displayedDeckImageViews;
//@property (strong, nonatomic) NSMutableArray *foundationImageViews;
//@property (strong, nonatomic) NSMutableArray *f1ImageViews;
//@property (strong, nonatomic) NSMutableArray *f2ImageViews;
//@property (strong, nonatomic) NSMutableArray *f3ImageViews;
//@property (strong, nonatomic) NSMutableArray *f4ImageViews;
//@property (strong, nonatomic) NSMutableArray *tableauImageViews;
//@property (strong, nonatomic) NSMutableArray *t1ImageViews;
//@property (strong, nonatomic) NSMutableArray *t2ImageViews;
//@property (strong, nonatomic) NSMutableArray *t3ImageViews;
//@property (strong, nonatomic) NSMutableArray *t4ImageViews;
//@property (strong, nonatomic) NSMutableArray *t5ImageViews;
//@property (strong, nonatomic) NSMutableArray *t6ImageViews;
//@property (strong, nonatomic) NSMutableArray *t7ImageViews;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.deckImageViews = [[NSMutableArray alloc] init];
//    self.pcd = [[PlayingCardDeck alloc] init];
//    self.cardModel = [self.pcd drawRandomCard];
//    self.card.image = self.cardModel.currentImage;
//    
//    UITapGestureRecognizer *tgr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cardTapped:) ];
//    
//    self.card.userInteractionEnabled = YES;
//    [tgr setNumberOfTouchesRequired:1];
//    [self.card addGestureRecognizer:tgr];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)cardTapped:(id)sender {
//    if(![self.cardModel isFaceUp]) {
//        [self.cardModel flip];
//    } else {
//        self.cardModel = [self.pcd drawRandomCard];
//    }
//    self.card.image = self.cardModel.currentImage;
//}
@end
