//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Nissan, Raphael on 6/24/13.
//  Copyright (c) 2013 Nissan, Raphael. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

-(void)setOperand:(double)anOperand
{
    operand=anOperand;
}

-(void)performWaitingOperation
{
    if([@"+" isEqual: waitingOperation]){
        operand=waitingOperand+operand;
    } else if([@"-" isEqual:waitingOperation]){
        operand=waitingOperand-operand;
    }else if([@"*" isEqual:waitingOperation]){
        operand=waitingOperand*operand;
    }else if([@"/" isEqual:waitingOperation]){
        if (operand){
            operand=waitingOperand/operand;
        }
    }
}

-(double)performOperation: (NSString *)operation{
    [self performWaitingOperation];
    waitingOperation = operation;
    waitingOperand = operand;
    return operand;
}
@end
