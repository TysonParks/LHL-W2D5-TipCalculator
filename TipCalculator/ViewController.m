//
//  ViewController.m
//  TipCalculator
//
//  Created by Tyson Parks on 2/23/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (strong, nonatomic) NSString *tipPercentage;
@property (strong, nonatomic) NSString *tipAmount;
@property (strong, nonatomic) NSString *billAmount;
//@property (nonatomic) float tipPercentageDecimalValue;

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UIButton *calculateTipButton;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

- (IBAction)calculateTip:(id)sender;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Assign UITextField delegates
    [[self billAmountTextField] setDelegate:self];
    self.billAmountTextField.delegate = self;
    [[self tipPercentageTextField] setDelegate:self];
    self.tipPercentageTextField.delegate = self;
    
    // Assign initial property values
    self.billAmountTextField.text = @"0.00";
    self.tipAmountLabel.text = @"";
    self.tipPercentageTextField.text = @"15%";
  
}


//-(void)textFieldDidEndEditing:(UITextField *)textField {
//    NSLog(@"Text entered");
//    if (textField == self.tipPercentageTextField) {
////        [self changeTipPercentage];
//    }
//    ;
//
//}

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





@end
