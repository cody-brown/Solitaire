//
//  ViewController.m
//  Solitaire
//
//  Created by Cody Brown on 11/1/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (strong, nonatomic) PlayingCardDeck *pcd;
@property (strong, nonatomic) PlayingCard *cardModel;
@property (weak, nonatomic) IBOutlet UIImageView *card;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pcd = [[PlayingCardDeck alloc] init];
    self.cardModel = [self.pcd drawRandomCard];
    self.card.image = self.cardModel.currentImage;
    
    UITapGestureRecognizer *tgr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cardTapped:) ];
    
    self.card.userInteractionEnabled = YES;
    [tgr setNumberOfTouchesRequired:1];
    [self.card addGestureRecognizer:tgr];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cardTapped:(id)sender {
    if(![self.cardModel isFaceUp]) {
        [self.cardModel flip];
    } else {
        self.cardModel = [self.pcd drawRandomCard];
    }
    self.card.image = self.cardModel.currentImage;
}
@end
