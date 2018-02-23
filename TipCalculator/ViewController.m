//
//  ViewController.m
//  TipCalculator
//
//  Created by Tyson Parks on 2/23/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSString *tipPercentage;
@property (strong, nonatomic) NSString *tipAmount;
@property (strong, nonatomic) NSString *billAmount;
@property (nonatomic) float tipPercentageDecimalValue;

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UIButton *calculateTipButton;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

- (IBAction)calculateTip:(id)sender;
- (IBAction)changeTipPercentage:(id)sender;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.billAmountTextField.text = @"Bill Total";
    self.tipAmountLabel.text = @"";
    self.tipPercentageDecimalValue = 0.15;
    self.tipPercentage = [NSString stringWithFormat:@"%.0f%%", (self.tipPercentageDecimalValue * 100)];
    
    //assign delegate???
//    self.billAmountTextField.delegate;
    
    
    
}


-(void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"Text entered");
    self.billAmount =  self.billAmountTextField.text;
    
}

- (IBAction)calculateTip:(id)sender {
   //Calculate 15% tip on amount entered into billAmountTextField
    self.billAmount = self.billAmountTextField.text;
    float billAmountValue = [self.billAmount floatValue];
    float tipAmountValue = billAmountValue * 0.15;
    self.tipAmount = [NSString stringWithFormat:@"%.2f", tipAmountValue];
    // Assign value to tip amount label
    self.tipAmountLabel.text = [NSString stringWithFormat:@"You should tip: $%@",self.tipAmount];
}

- (IBAction)changeTipPercentage:(id)sender {
    self.tipPercentage = self.tipPercentageTextField.text;
    float tipPercentageDecimalValue = [self.tipPercentage floatValue] * 100.0;
}



@end
