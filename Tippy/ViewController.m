//
//  ViewController.m
//  Tippy
//
//  Created by clairec on 6/25/19.
//  Copyright © 2019 codepath. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISlider *tipAmt;
@property (weak, nonatomic) IBOutlet UILabel *tipNum;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    
    NSLog(@"HELLO!");
    [self.view endEditing:YES];
}


- (IBAction)onEdit:(id)sender {
    double bill = [self.billField.text doubleValue];
    

    CGFloat val = floorf(self.tipAmt.value * 100)/100;
    self.tipNum.text = [NSString stringWithFormat:@"%.2f", val];
    CGFloat tipPercentage = val;

    CGFloat tip = tipPercentage * bill;
    CGFloat total = bill + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    
    
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
    
}


//- (IBAction)beginEdit:(id)sender {
//
//    [UIView animateWithDuration:5.0 animations:^{
//        CGRect newFrame = self.billField.frame;
//        newFrame.size.width = 1.5 * self.billField.frame.size.width;
//        newFrame.size.height = 1.5 * self.billField.frame.size.height;
//
//        self.billField.frame = newFrame;
//    }];
//    
//
//}
//
//- (IBAction)endEdit:(id)sender {
//
//    [UIView animateWithDuration:5.0 animations:^{
//        CGRect newFrame = self.billField.frame;
//        newFrame.size.width = (int)(2/3) * self.billField.frame.size.width;
//        newFrame.size.height = (int)(2/3) * self.billField.frame.size.height;
//
//        self.billField.frame = newFrame;
//    }];
//}



@end
