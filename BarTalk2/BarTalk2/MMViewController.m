//
//  MMViewController.m
//  BarTalk2
//
//  Created by David Johnston on 2/6/13.
//  Copyright (c) 2013 David Johnston. All rights reserved.
//

#import "MMViewController.h"
#import "MMUITextField.h"

@interface MMViewController ()
{
    MMUITextField *awesomeTextStuff;
}
@end

@implementation MMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //change background to orange
	[[self view] setBackgroundColor:[UIColor whiteColor]];
    
    //initialize our text box
    awesomeTextStuff = [[MMUITextField alloc] initWithFrame:CGRectMake(10, 175, 300, 100)];
    
    //David 1 - internet code for keyboard done fix
    [awesomeTextStuff setDelegate:self];
    
    //add the text field to our view
    [[self view] addSubview:awesomeTextStuff];
                        
    // Do any additional setup after loading the view, typically from a nib.
    
}

//David 1 -  Second part of keyboard done fix... adding this as and experiment to try to get text keys to go away when done.

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

//David - 1 end of added part.  Works...!


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
