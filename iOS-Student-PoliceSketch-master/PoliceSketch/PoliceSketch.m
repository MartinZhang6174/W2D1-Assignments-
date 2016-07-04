//
//  PoliceSketch.m
//  PoliceSketch
//
//  Created by Martin Zhang on 2016-07-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "PoliceSketch.h"

@implementation PoliceSketch

//-(instancetype)init {
//    _currentEyeIndex = 0;
//    _currentNoseIndex = 0;
//    _currentMouthIndex = 0;
//    return 0;
//}

-(instancetype)init {
{
    self = [super init];
    if (self) {
        _currentEyeIndex = arc4random_uniform(self.class.listOfEyes.count);
        _currentNoseIndex = arc4random_uniform(self.class.listOfEyes.count);
        _currentMouthIndex = arc4random_uniform(self.class.listOfEyes.count);
    }
    return self;
}
}

+(NSArray *)listOfEyes {
    return @[
             [UIImage imageNamed:@"eyes_1.jpg"],
             [UIImage imageNamed:@"eyes_2.jpg"],
             [UIImage imageNamed:@"eyes_3.jpg"],
             [UIImage imageNamed:@"eyes_4.jpg"],
             [UIImage imageNamed:@"eyes_5.jpg"]
             ]
             ;
}

+(NSArray *)listOfNoses {
    return @[
             [UIImage imageNamed:@"nose_1.jpg"],
             [UIImage imageNamed:@"nose_2.jpg"],
             [UIImage imageNamed:@"nose_3.jpg"],
             [UIImage imageNamed:@"nose_4.jpg"],
             [UIImage imageNamed:@"nose_5.jpg"]
             ];
}

+(NSArray *)listOfMouths {
    return @[
             [UIImage imageNamed:@"mouth_1.jpg"],
             [UIImage imageNamed:@"mouth_2.jpg"],
             [UIImage imageNamed:@"mouth_3.jpg"],
             [UIImage imageNamed:@"mouth_4.jpg"],
             [UIImage imageNamed:@"mouth_5.jpg"]
             ];
}

-(UIImage *)getEyes {
    NSArray *eyes = [PoliceSketch listOfEyes];
//    return eyes[0];
    return [eyes objectAtIndex:self.currentEyeIndex];
}

-(UIImage *)getNose {
    NSArray *nose = [PoliceSketch listOfNoses];
    return [nose objectAtIndex:self.currentNoseIndex];
}

-(UIImage *)getMouth {
    NSArray *mouth = [PoliceSketch listOfMouths];
    return [mouth objectAtIndex:self.currentMouthIndex];
}

-(void)nextEye {
    self.currentEyeIndex = self.currentEyeIndex + 1;
    if (self.currentEyeIndex >= [[self.class listOfEyes]count]) {
        self.currentEyeIndex = 0;
    }
}

-(void)nextNose {
    self.currentNoseIndex = self.currentNoseIndex + 1;
    if (self.currentNoseIndex >= [[self.class listOfNoses]count]) {
        self.currentNoseIndex = 0;
    }
}

-(void)nextMouth {
    self.currentMouthIndex = self.currentMouthIndex + 1;
    if (self.currentMouthIndex >= [[self.class listOfMouths]count]) {
        self.currentMouthIndex = 0;
    }
}

-(void)previousEye {
    self.currentEyeIndex = self.currentEyeIndex - 1;
    if (self.currentEyeIndex >= [[self.class listOfEyes]count]) {
        self.currentEyeIndex = 4;
    }
}

-(void)previousNose {
    self.currentNoseIndex = self.currentNoseIndex - 1;
    if (self.currentNoseIndex >= [[self.class listOfNoses]count]) {
        self.currentNoseIndex = 4;
    }
}

-(void)previousMouth {
    self.currentMouthIndex = self.currentMouthIndex - 1;
    if (self.currentMouthIndex >= [[self.class listOfMouths]count]) {
        self.currentMouthIndex = 4;
    }
}

@end
