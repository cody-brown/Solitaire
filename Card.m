//
//  Card.m
//  Solitaire
//
//  Created by Cody Brown on 11/1/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import "Card.h"

@implementation Card

#pragma mark - Init Methods
-(id)init
{
    if ( self = [super init] )
    {
        self.isFaceUp = false;
        self.currentImage = self.backImage;
    }
    return self;
}

-(UIImage *)currentImage
{
    if(!_currentImage) {
        if(self.isFaceUp) {
            _currentImage = self.frontImage;
        } else {
            _currentImage = self.backImage;
        }
    }
    return _currentImage;
}

#pragma mark - Methods

-(void) flip
{
    self.isFaceUp = !self.isFaceUp;
    if(self.isFaceUp) {
        self.currentImage = self.frontImage;
    } else {
        self.currentImage = self.backImage;
    }
}

@end
