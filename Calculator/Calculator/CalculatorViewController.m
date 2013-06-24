//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Nissan, Raphael on 6/24/13.
//  Copyright (c) 2013 Nissan, Raphael. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(CalculatorBrain *)brain
{
    if (!brain){
        brain = [[CalculatorBrain alloc]init];
    }
    return brain;
}

-(IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [[sender titleLabel] text];
    if (userIsInMiddleOfTypingNumber){
        [display setText:[[display text] stringByAppendingString:digit]];
    } else{
        [display setText:digit];
        userIsInMiddleOfTypingNumber = YES;
    }
}

-(IBAction)operationPressed:(UIButton *)sender
{
    if (userIsInMiddleOfTypingNumber){
        [[self brain] setOperand:[[display text] doubleValue]];
        userIsInMiddleOfTypingNumber = NO;
    }
    NSString *operation= [[sender titleLabel] text];
    double result = [[self brain] performOperation:operation];
    [display setText:[NSString stringWithFormat:@"%g", result]];
}
@end
