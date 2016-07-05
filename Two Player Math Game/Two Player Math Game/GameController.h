//
//  GameController.h
//  Two Player Math Game
//
//  Created by Martin Zhang on 2016-07-04.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameController : NSObject

@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;
@property (nonatomic) int x;
@property (nonatomic) int y;
@property (nonatomic, strong) Player *currentPlayer;
@property (nonatomic) int playerInput;

- (BOOL)checkAnswer:(int)input;
- (void)decreaseCurrentScore;
- (void)changePlayer;
- (NSString *)generateNewQuestion;

@end
