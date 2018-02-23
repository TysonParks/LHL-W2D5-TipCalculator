//
//  ViewController.m
//  TipCalculator
//
//  Created by Tyson Parks on 2/23/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(strong, nonatomic) NSString *tipAmount;
@property (strong, nonatomic) NSString *billAmount;

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UIButton *calculateTipButton;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.billAmountTextField.text = @"Bill Total";
    
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
    NSLog(@"Tip amount: %@", self.tipAmount);
}


@end
