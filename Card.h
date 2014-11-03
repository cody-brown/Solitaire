//
//  Card.h
//  Solitaire
//
//  Created by Cody Brown on 11/1/14.
//  Copyright (c) 2014 Cody Brown. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic) BOOL isFaceUp;
@property (strong, nonatomic) UIImage *frontImage;
@property (strong, nonatomic) UIImage *backImage;
@property (strong, nonatomic) UIImage *currentImage;

-(void) flip;

@end
