//
//  GameController.m
//  Two Player Math Game
//
//  Created by Martin Zhang on 2016-07-04.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _player1 = [[Player alloc] init];
        _player1.name = @"Player 1";
        _player2 = [[Player alloc] init];
        _player2.name = @"Player 2";
        _x = arc4random_uniform(25);
        _y = arc4random_uniform(25);
        _currentPlayer = _player1;
        _playerInput = 0;
    }
        return self;
}

- (BOOL)checkAnswer:(int)input {
    int rightAnswer = self.x + self.y;
    if (rightAnswer == input) {
        return true;
    } else {
        return false;
    }
}

- (void)decreaseCurrentScore {
    self.currentPlayer.currentScore -= 1;
}

- (void)changePlayer {
    if (self.currentPlayer == self.player1) {
        self.currentPlayer = self.player2;
    } else {
        self.currentPlayer = self.player1;
    }
}

- (NSString *)generateNewQuestion {
    self.x = arc4random_uniform(25);
    self.y = arc4random_uniform(25);
    return [NSString stringWithFormat:@"%@: %i + %i ?",[[self currentPlayer]name],self.x,self.y];
}



@end
