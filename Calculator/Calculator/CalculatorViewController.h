//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Nissan, Raphael on 6/24/13.
//  Copyright (c) 2013 Nissan, Raphael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"
@interface CalculatorViewController : UIViewController{
    CalculatorBrain * brain;
    IBOutlet UILabel * display;
    BOOL userIsInMiddleOfTypingNumber;
}

-(IBAction)digitPressed:(UIButton *)sender;
-(IBAction)operationPressed:(UIButton *)sender;

@end
