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
//@property (nonatomic) float billAmountValue;
//@property (nonatomic) float tipPercentageValue;

@property (strong, nonatomic) Calculator *calculator;

// UI Elements
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
    
    self.calculator = [[Calculator alloc] init];
    
    // Assign initial property values
//    self.billAmountValue = 0.0;
//    self.tipPercentageValue = 0.15;
    self.billAmountTextField.text = @"$0.00";
    self.tipAmountLabel.text = @"";
    self.tipPercentageTextField.text = @"15%";
    
//    [self.tipAmountLabel ]
    
    self.billAmountTextField.keyboardType = UIKeyboardTypeNumberPad;
    self.tipPercentageTextField.keyboardType = UIKeyboardTypeNumberPad;
}

// Action Methods (should become calls to model instead)
- (IBAction)calculateTip:(id)sender {
    // Call calculator method calculateTipFrom...
    
    self.tipAmount = [self.calculator calculateTipFromTipPercentage:self.self.tipPercentageTextField.text AndBillAmount:self.billAmountTextField.text];
    
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
