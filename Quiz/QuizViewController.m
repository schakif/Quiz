//
//  QuizViewController.m
//  Quiz
//
//  Created by Steve Chakif on 1/21/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    index = 0;
    answers = [NSArray arrayWithObjects:@"14", @"Montpelier", @"4 credtis = 1 unit", @"Xcode", @"False", nil];
    questions = [NSArray arrayWithObjects:@"What is 7+7?", @"What is the capital of Vermont?", @"How many credits are equivalent to one unit at Moravian College?", @"What application was used to make this?", @"True or False: Cats have 9 lives.", nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender {
    [self.questionLabel setText:[questions objectAtIndex:index]];
    [self.answerLabel setText:@""];
}

- (IBAction)showAnswer:(id)sender {
    NSInteger questionIndex = [questions indexOfObject:[self.questionLabel text]];
    [self.answerLabel setText:[answers objectAtIndex:questionIndex]];
    index++;
    if (index >= [questions count]) {
        index = 0;
    }
}
@end
