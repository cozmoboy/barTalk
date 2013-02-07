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
	[[self view] setBackgroundColor:[UIColor orangeColor]];
    
    //initialize our text box
    awesomeTextStuff = [[MMUITextField alloc] initWithFrame:CGRectMake(0, 100, 300, 100)];
    
    //internet code for keyboard done fix
    [awesomeTextStuff setDelegate:self];
    
    //add the text field to our view
    [[self view] addSubview:awesomeTextStuff];
                        
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
