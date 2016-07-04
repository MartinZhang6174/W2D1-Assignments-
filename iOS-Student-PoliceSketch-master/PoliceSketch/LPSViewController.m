//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "PoliceSketch.h"

@interface LPSViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *eyeImage;
@property (strong, nonatomic) IBOutlet UIImageView *noseImage;
@property (strong, nonatomic) IBOutlet UIImageView *mouthImage;

@property PoliceSketch* sketch;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.sketch = [[PoliceSketch alloc] init];
    
    self.eyeImage.image = [self.sketch getEyes];
    self.noseImage.image = [self.sketch getNose];
    self.mouthImage.image = [self.sketch getMouth];

    // Here is where you will create the buttons & image views and add them to the view.
}

- (IBAction)previousEyePressed:(UIButton *)sender {
    [self.sketch previousEye];
    self.eyeImage.image = [self.sketch getEyes];
}

- (IBAction)previousNosePressed:(UIButton *)sender {
    [self.sketch previousNose];
    self.noseImage.image = [self.sketch getNose];
}

- (IBAction)previousMouthPressed:(UIButton *)sender {
    [self.sketch previousMouth];
    self.mouthImage.image = [self.sketch getMouth];
}

- (IBAction)nextEyePressed:(UIButton *)sender {
    [self.sketch nextEye];
    self.eyeImage.image = [self.sketch getEyes];
}

- (IBAction)nextNosePressed:(UIButton *)sender {
    [self.sketch nextNose];
    self.noseImage.image = [self.sketch getNose];
}

- (IBAction)nextMouthPressed:(UIButton *)sender {
    [self.sketch nextMouth];
    self.mouthImage.image = [self.sketch getMouth];
}

@end
