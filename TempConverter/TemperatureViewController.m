//
//  TemperatureViewController.m
//  TempConverter
//
//  Created by Mohtashim Khan on 8/2/13.
//  Copyright (c) 2013 Mohtashim Khan. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Set the navigation bar title
    self.title = @"Temperature";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)performConversion:(id)sender {
    
    // Hide the keyboard
    [self.view endEditing:YES];
    
    // Clear the error Label
    self.errorLabel.text = @"";
    
    // Get the textfield values
    float farenheit = [self.farenheitTextbox.text floatValue];
    float celcius = [self.celciusTextbox.text floatValue];

    // Check string == "" as you can convert 0C to F as well and vice versa.
    if ( ![self.farenheitTextbox.text isEqualToString:@""] ) {
        celcius = (farenheit - 32) * 5.0/9.0; // F to C
        self.celciusTextbox.text = [NSString stringWithFormat:@"%0.2f", celcius];
    } else if ( ![self.celciusTextbox.text isEqualToString:@""] ){
        farenheit = celcius * 9.0/5.0 + 32.0; // C to F
        self.farenheitTextbox.text = [NSString stringWithFormat:@"%0.2f", farenheit];
    } else {
        self.errorLabel.text = @"Nothing to convert.";
    }
}
@end
