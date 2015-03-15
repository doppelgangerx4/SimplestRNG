//
//  ViewController.m
//  RandomNumberGenerator
//
//  Created by Kevin Chen on 3/15/15.
//  Copyright (c) 2015 Kevin Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.sidesTextField setDelegate:self];
    self.sides = 6;
    [self.sidesTextField setText:[NSString stringWithFormat:@"%lu",self.sides]];
    
    if ([[self.view gestureRecognizers] count] == 0)
    {
        [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self.view action:@selector(endEditing:)]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) textFieldDidEndEditing:(UITextField *)textField
{
    NSString* textFieldStr = [textField text];
    NSInteger textFieldVal = [textFieldStr integerValue];
    if (textFieldVal > 1)
    {
        self.sides = textFieldVal;
    }
    else
    {
        [textField setText:[NSString stringWithFormat:@"%lu",self.sides]];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)rollDiceButtonTapped:(id)sender
{
    if (self.sides <= 1)
    {
        [self.diceValue setText:@"err"];
        return;
    }
    int val = (arc4random() % (uint32_t)self.sides) + 1;
    [self.diceValue setText:[NSString stringWithFormat:@"%d",val]];
    //[self.diceValue updateConstraints];
}

@end
