//
//  ViewController.m
//  LotsofCalculator
//
//  Created by Tedtya on 8/30/18.
//  Copyright © 2018 Tedtya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIAlertViewDelegate>


@end

@implementation ViewController{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    mArrayHistory = [[NSMutableArray alloc] init];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (void) showAlert:(NSString*) alertMessage andalertTitle:(NSString*) alertTitle{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:alertTitle
                                                                             message:alertMessage
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    //We add buttons to the alert controller by creating UIAlertActions:
    UIAlertAction *actionOk = [UIAlertAction
                               actionWithTitle:@"Ok"
                               style:UIAlertActionStyleDefault
                               handler:nil];
    //You can use a block here to handle a press on this button
    [alertController addAction:actionOk];
    [self presentViewController:alertController animated:YES completion:nil];
}


- (IBAction)calculate:(id)sender {
    
    A = self.valueA.text.intValue;
    B = self.valueB.text.intValue;
    NSString *signS = self.sign.text;
    
    NSInteger C = 0;
    
    
    if (self.valueA.text == nil || self.valueB.text == nil ){
        [self showAlert:(@"Nice Nice") andalertTitle:(@"Value is Null")];
    }
    else if ([signS  isEqual: @"+"]){
        C = A + B;
        self.lblResult.text = [NSString stringWithFormat:@"%li + %li = %li",(long)A,(long)B,(long)C];
        NSString *test = self.lblResult.text;
        [mArrayHistory addObject:test];
        NSLog(@"%@",mArrayHistory);
    }
    else if ([signS  isEqual: @"-"]){
        C = A - B;
        self.lblResult.text = [NSString stringWithFormat:@"%li - %li = %li",(long)A,(long)B,(long)C];
        NSString *test = self.lblResult.text;
        [mArrayHistory addObject:test];
        NSLog(@"%@",mArrayHistory);
    }
    else if ([signS  isEqual: @"*"]){
        C = A * B;
        self.lblResult.text = [NSString stringWithFormat:@"%li * %li = %li",(long)A,(long)B,(long)C];
        NSString *test = self.lblResult.text;
        [mArrayHistory addObject:test];
        NSLog(@"%@",mArrayHistory);
    }
    else if ([signS  isEqual: @"/"]){
        C = A / B;
        self.lblResult.text = [NSString stringWithFormat:@"%li + %li = %li",(long)A,(long)B,(long)C];
        NSString *test = self.lblResult.text;
        [mArrayHistory addObject:test];
        NSLog(@"%@",mArrayHistory);
    }
    else{
        [self showAlert:@"Nice Nice" andalertTitle:@"Error"];
    }
    
}

- (IBAction)showHistory:(id)sender {
    NSString *newstring = [mArrayHistory componentsJoinedByString:@", "];
    self.textView.text = newstring;
}
@end
