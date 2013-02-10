//
//  MMUITextField.m
//  BarTalk2
//
//  Created by David Johnston on 2/6/13.
//  Copyright (c) 2013 David Johnston. All rights reserved.
//

#import "MMUITextField.h"

@implementation MMUITextField
-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        //[self setFont:[UIFont systemFontOfSize:60]];
        [self setBorderStyle:UITextBorderStyleNone];
        [self setTextColor:[UIColor blackColor]];
        [self setTextAlignment:NSTextAlignmentCenter];
        [self setAdjustsFontSizeToFitWidth:YES];
        [self setFont:[UIFont boldSystemFontOfSize:60]];
        [self setPlaceholder:@"Type here..."];
        //[self setReturnKeyType:UIReturnKeyDone];
        return self;
    }
}
@end
