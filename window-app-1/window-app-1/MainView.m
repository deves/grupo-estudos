//
//  MainView.m
//  window-app-1
//
//  Created by Cristiano Caldas on 6/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainView.h"


@implementation MainView

@synthesize txt_name;
@synthesize btn_send;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        btn_send = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn_send.frame = CGRectMake(210, 0, 100, 30);
        [btn_send setTitle:@"Send" forState:UIControlStateNormal];
        //btn_send.backgroundColor = [UIColor whiteColor];
        //btn_send.titleLabel.textColor = [UIColor blackColor];
        //btn_send.titleLabel.text = @"Send";
        //[btn_send.titleLabel setText:@"Send"];
        
        [self addSubview:btn_send];
        //[btn_send autorelease];
        
        txt_name = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
        txt_name.backgroundColor = [UIColor whiteColor];
        [self addSubview:txt_name];  
        [txt_name release];
        
        
        //[btn_send actionsForTarget:<#(id)#> forControlEvent:<#(UIControlEvents)#>
        
        //[self alert:@"Teste"];
        
    }
    return self;
}

-(void)alert:(NSString *)msg{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:msg delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
    [alert show];
    //[alert release];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc
{
    [btn_send release];
    [btn_send dealloc];
    [txt_name dealloc];
    
    [super dealloc];
}

@end
