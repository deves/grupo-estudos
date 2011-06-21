//
//  MainViewController.m
//  window-app-1
//
//  Created by Cristiano Caldas on 6/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"
#import "TableViewController.h"

@implementation MainViewController

-(id)init {
    if(self == [super init])
        [self setup];
    
    else {}
    
    return self;
}

-(void)setup {
    
    //UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    //[label setText:@"Test"];
    //[self.view addSubview:label];
    
    //self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)]; 
    
    tableController = [[TableViewController alloc] init];
    //formController = [[FormViewController alloc] init];
    
    //[self initWithRootViewController:tableController];
    
    //[self.view addSubview:navigator.view];
    
    [self showTable];
}

-(void)showTable {   
    [self pushViewController:tableController animated:YES];
}
-(void)showDetails:(NSUInteger *)index {
    
    if(formController == nil)
        formController = [[FormViewController alloc] init];
    
    //formController.title = data.name;
    [formController setContactIndex:index];
    
    //formController.title = [[((NSDictionary *)data) objectForKey:@"user"] objectForKey:@"screen_name"];
    //formController.title = [[((NSDictionary *)data) objectForKey:@"user"] objectForKey:@"screen_name"];
    //NSDictionary *dic = (NSDictionary *)data;
    //NSLog([data description]);
    //NSLog([dic objectForKey:@"user"]);
    //NSLog([[((NSDictionary *)data) objectForKey:@"user"] objectForKey:@"screen_name"]);
    
    [self pushViewController:formController animated:YES];
}

/*-(void)btn_form_touchDown:(id *)target {  
    //NSLog(@"btn_form_touchDown");
    formController = [[FormViewController alloc] init];
    [navigator pushViewController:formController animated:YES];
}*/


/*-(void)btn_send_touchDown:(id *)target {    
    //[[self getView] alert:[self getView].txt_name.text];
    
    //tableController = [[TableViewController alloc] init];    
    //[self.view addSubview:tableController.view];
    //[navigator pushViewController:tableController animated:YES];
}*/

/*-(MainView *)getView {
    return (MainView *)self.view;
}*/

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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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
