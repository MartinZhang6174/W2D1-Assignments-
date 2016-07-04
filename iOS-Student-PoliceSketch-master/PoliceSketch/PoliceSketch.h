//
//  PoliceSketch.h
//  PoliceSketch
//
//  Created by Martin Zhang on 2016-07-04.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PoliceSketch : NSObject

@property (nonatomic)int currentEyeIndex;
@property (nonatomic)int currentNoseIndex;
@property (nonatomic)int currentMouthIndex;

+(NSArray *)listOfEyes;
+(NSArray *)listOfNoses;
+(NSArray *)listOfMouths;

-(UIImage *)getEyes;
-(UIImage *)getNose;
-(UIImage *)getMouth;

-(void)nextEye;
-(void)nextNose;
-(void)nextMouth;
-(void)previousEye;
-(void)previousNose;
-(void)previousMouth;

@end
