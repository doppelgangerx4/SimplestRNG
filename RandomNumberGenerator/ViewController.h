//
//  ViewController.h
//  RandomNumberGenerator
//
//  Created by Kevin Chen on 3/15/15.
//  Copyright (c) 2015 Kevin Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *diceValue;
@property (weak, nonatomic) IBOutlet UITextField *sidesTextField;
@property (weak, nonatomic) IBOutlet UIButton *rollDiceButton;

@property (readwrite, atomic) NSInteger sides;

@end

