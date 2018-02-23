//
//  ViewController.m
//  TipCalculator
//
//  Created by Tyson Parks on 2/23/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () /* <UITextFieldDelegate> */

// Labeling properties
@property (strong, nonatomic) NSString *tipPercentage;
@property (strong, nonatomic) NSString *tipAmount;
@property (strong, nonatomic) NSString *billAmount;

// Float properties (should move/repeat to model)
@property (nonatomic) float billAmountValue;
@property (nonatomic) float tipPercentageValue;


@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (weak, nonatomic) IBOutlet UIButton *calculateTipButton;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

- (IBAction)calculateTip:(id)sender;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    // Assign UITextField delegates
//    [[self billAmountTextField] setDelegate:self];
//    self.billAmountTextField.delegate = self;
//    [[self tipPercentageTextField] setDelegate:self];
//    self.tipPercentageTextField.delegate = self;
    
    
    // Assign initial property values
    self.billAmountValue = 0.0;
    self.tipPercentageValue = 0.15;
    self.billAmountTextField.text = @"$0.00";
    self.tipAmountLabel.text = @"";
    self.tipPercentageTextField.text = @"15%";
}

// Action Methods (should become calls to model instead)
- (IBAction)calculateTip:(id)sender {
   //Calculate tip based on Bill amount and tip percentage
    self.billAmount = self.billAmountTextField.text;
    self.tipPercentage = self.tipPercentageTextField.text;
    
    
    float billAmountValue = [self.billAmount floatValue];
    float tipPercentageValue = [self.tipPercentage floatValue] * 0.01;
    float tipAmountValue = billAmountValue * tipPercentageValue;
    
    self.tipAmount = [NSString stringWithFormat:@"%.2f", tipAmountValue];
    // Assign value to tip amount label
    self.tipAmountLabel.text = [NSString stringWithFormat:@"You should tip: $%@",self.tipAmount];
}

//-(void)textFieldDidEndEditing:(UITextField *)textField {
//    NSLog(@"Text entered");
//    if (textField == self.tipPercentageTextField) {
////        [self changeTipPercentage];
//    }
//    ;
//
//}




@end
