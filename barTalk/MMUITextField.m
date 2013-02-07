//
//  MMUITextField.m
//  barTalk
//
//  Created by David Johnston on 2/6/13.
//  Copyright (c) 2013 David Johnston. All rights reserved.
//

#import "MMUITextField.h"

@implementation MMUITextField
-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setTextColor:[UIColor whiteColor]];
        [self setBorderStyle:UITextBorderStyleNone];
        [self setFont:[UIFont systemFontOfSize:42]];
        [self setPlaceholder:@"Please Text Me UP!"];
        [self setReturnKeyType:UIReturnKeyDone];
        return self;
    }
    return nil;
}
@end
