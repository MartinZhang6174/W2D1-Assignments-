//
//  Player.m
//  Two Player Math Game
//
//  Created by Martin Zhang on 2016-07-04.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _initialScore = 3;
        _currentScore = _initialScore;
    }
    return self;
}

@end
