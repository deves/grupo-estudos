//
//  FormViewController.m
//  window-app-1
//
//  Created by Cristiano Caldas on 6/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FormViewController.h"
#import "ContactsModel.h"


@implementation FormViewController

-(void)setup {
    self.title = @"Details";
    lbl_name = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 20)];
    lbl_email = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, 400, 20)];
    lbl_phone = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, 400, 20)];

    [self.view addSubview:lbl_name];
    [self.view addSubview:lbl_email];
    [self.view addSubview:lbl_phone];
}

-(void)setContactIndex:(NSUInteger *)index {
    //NSLog(@"contact index %d", index);
    
    ContactVO *contact = [[[ContactsModel alloc] init] getContactAt:index];
    
    self.title = [NSString stringWithFormat:@"Details of: %@", contact.name];
    
    NSLog(@"setContact: %@ %@ %@", contact.name, contact.email, contact.phone);
    
    lbl_name.text = contact.name;
    lbl_email.text = contact.email;
    lbl_phone.text = contact.phone;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
