//
//  Calculator.h
//  TipCalculator
//
//  Created by Tyson Parks on 2/23/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

// Float properties (should move/repeat to model)
@property (nonatomic) float billAmountValue;
@property (nonatomic) float tipPercentageValue;
@property (nonatomic) float tipAmountValue;
@property (strong, nonatomic) NSString *tipAmount;



// Instance methods
-(NSString*) calculateTipFromTipPercentage:(NSString*)tipPercentage AndBillAmount: (NSString*) billAmount;

@end
