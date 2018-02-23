//
//  Calculator.m
//  TipCalculator
//
//  Created by Tyson Parks on 2/23/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator


-(NSString *)calculateTipFromTipPercentage:(NSString *)tipPercentage AndBillAmount:(NSString *)billAmount {
    //Calculate tip based on Bill amount and tip percentage;
    
    
    self.billAmountValue = [billAmount floatValue];
    self.tipPercentageValue = [tipPercentage floatValue] * 0.01;
    self.tipAmountValue = self.billAmountValue * self.tipPercentageValue;
    
    self.tipAmount = [NSString stringWithFormat:@"%.2f", tipAmountValue];
    // Assign value to tip amount label
    self.tipAmountLabel.text = [NSString stringWithFormat:@"You should tip: $%@",self.tipAmount];
    
    return
}

@end
