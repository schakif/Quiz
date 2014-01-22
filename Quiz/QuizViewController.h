//
//  QuizViewController.h
//  Quiz
//
//  Created by Steve Chakif on 1/21/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController {
    NSArray *questions, *answers;
    NSInteger index;
}
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
- (IBAction)showAnswer:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
- (IBAction)showQuestion:(id)sender;

@end
