//
//  ViewController.h
//  LotsofCalculator
//
//  Created by Tedtya on 8/30/18.
//  Copyright © 2018 Tedtya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSInteger A;
    NSInteger B;
    NSString *result;
    NSArray *arrayHistory;
    NSMutableArray *mArrayHistory;
    
    
}



@property (weak, nonatomic) IBOutlet UITextField *valueA;
@property (weak, nonatomic) IBOutlet UITextField *valueB;
@property (weak, nonatomic) IBOutlet UITextField *sign;
@property (weak, nonatomic) IBOutlet UILabel *lblResult;
@property (weak, nonatomic) IBOutlet UITextView *textView;

- (IBAction)calculate:(id)sender;

- (IBAction)showHistory:(id)sender;


@end

