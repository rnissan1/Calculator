//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Nissan, Raphael on 6/24/13.
//  Copyright (c) 2013 Nissan, Raphael. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject{
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}

-(void)setOperand:(double)anOperand;
-(double)performOperation: (NSString *)operation;
@end
