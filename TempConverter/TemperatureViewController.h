//
//  TemperatureViewController.h
//  TempConverter
//
//  Created by Mohtashim Khan on 8/2/13.
//  Copyright (c) 2013 Mohtashim Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *errorLabel;
@property (weak, nonatomic) IBOutlet UITextField *farenheitTextbox;
@property (weak, nonatomic) IBOutlet UITextField *celciusTextbox;
- (IBAction)performConversion:(id)sender;

@end
