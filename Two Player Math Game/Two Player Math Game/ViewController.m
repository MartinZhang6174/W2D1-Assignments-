//
//  ViewController.m
//  Two Player Math Game
//
//  Created by Martin Zhang on 2016-07-04.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *playerAndQuestionLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerOneCurrentScore;
@property (strong, nonatomic) IBOutlet UILabel *playerTwoCurrentScore;
// User Input property to count the user's input by doing following:
// Multiply the initial/default value of "userInput" -> add the second pressed button's value(if it's the case).
// This method works for both single digit-input and double-digit input.
@property (nonatomic) int userInput;

- (void)userInput:(int)digit;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.game = [[GameController alloc] init];
    self.playerOneCurrentScore.text = [NSString stringWithFormat: @"Player one score: %d",self.game.player1.currentScore];
    self.playerTwoCurrentScore.text = [NSString stringWithFormat: @"Player two score: %d",self.game.player2.currentScore];
    NSString *playerAndQuestionDisplay = [NSString stringWithFormat:@"%@: %i + %i ?",[[self.game currentPlayer]name],self.game.x,self.game.y];
    self.playerAndQuestionLabel.text = playerAndQuestionDisplay;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)userInput:(int)digit {
    self.userInput = self.userInput * 10;
    self.userInput = self.userInput + digit;
}

- (IBAction)enterButtonPressed:(UIButton *)sender {
    // Everytime the ENTER button was pressed, the value of the INPUT must be set back to zero.
    // Or it would cause inevitable error in the next round since the value the INPUT is added from the last value from the previous round.
    BOOL rightOrNot;
    rightOrNot = [self.game checkAnswer:self.userInput];
    if (rightOrNot == false) {
        [self.game decreaseCurrentScore];
    }
    self.playerOneCurrentScore.text = [NSString stringWithFormat: @"Player one score: %d",self.game.player1.currentScore];
    self.playerTwoCurrentScore.text = [NSString stringWithFormat: @"Player two score: %d",self.game.player2.currentScore];
    if (self.game.player2.currentScore < 0) {
        self.playerTwoCurrentScore.text = [NSString stringWithFormat: @"Player two lost."];
    } else if (self.game.player1.currentScore < 0) {
        self.playerOneCurrentScore.text = [NSString stringWithFormat: @"Player one lost."];
    }
    self.userInput = 0;
    [self.game changePlayer];
    self.playerAndQuestionLabel.text = [self.game generateNewQuestion];
}
- (IBAction)zeroButtonPressed:(UIButton *)sender {
    [self userInput:0];
}
- (IBAction)oneButtonPressed:(UIButton *)sender {
    [self userInput:1];
}
- (IBAction)twoButtonPressed:(UIButton *)sender {
    [self userInput:2];
}
- (IBAction)threeButtonPressed:(UIButton *)sender {
    [self userInput:3];
}
- (IBAction)fourButtonPressed:(UIButton *)sender {
    [self userInput:4];
}
- (IBAction)fiveButtonPressed:(UIButton *)sender {
    [self userInput:5];
}
- (IBAction)sixButtonPressed:(UIButton *)sender {
    [self userInput:6];
}
- (IBAction)sevenButtonPressed:(UIButton *)sender {
    [self userInput:7];
}
- (IBAction)eightButtonPressed:(UIButton *)sender {
    [self userInput:8];
}
- (IBAction)nineButtonPressed:(UIButton *)sender {
    [self userInput:9];
}

@end
