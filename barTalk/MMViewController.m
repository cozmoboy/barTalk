//
//  MMViewController.m
//  barTalk
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
    //change background to black
	[[self view] setBackgroundColor:[UIColor blackColor]];
    
    // initiallize our awesome text view
    awesomeTextStuff = [[MMUITextField alloc] initWithFrame:CGRectMake(0, 200, 300, 50)];
    //internet code for keyboard done fix
    [awesomeTextStuff setDelegate:self];
    //add the text field to our view
    [[self view] addSubview:awesomeTextStuff];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
