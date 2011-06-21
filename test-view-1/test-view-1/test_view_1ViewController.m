//
//  test_view_1ViewController.m
//  test-view-1
//
//  Created by Cristiano Caldas on 5/23/11.
//  Copyright 2011 Simbionte Studios. All rights reserved.
//

#import "test_view_1ViewController.h"

@implementation test_view_1ViewController

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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];

    //myButton.frame = CGRectMake(20, 100, 200, 50); // position in the parent view and set the size of the button
    
    //[myButton setTitle:@"Click Me!" forState:UIControlStateNormal];
    
    // add targets and actions
    //[myButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    // add to a view
    //addSubview:myButton];
    
    //[self.view addSubview:myButton];
    
    UITableView *table = [[[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)] autorelease];
    [self.view addSubview:table];
    
    listOfItems = [[[NSMutableArray alloc] init] autorelease];
    
    //Add items
    [listOfItems addObject:@"Iceland"];
    [listOfItems addObject:@"Greenland"];
    [listOfItems addObject:@"Switzerland"];
    [listOfItems addObject:@"Norway"];
    [listOfItems addObject:@"New Zealand"];
    [listOfItems addObject:@"Greece"];
    [listOfItems addObject:@"Rome"];
    [listOfItems addObject:@"Ireland"];
    
    [table numberOfRowsInSection:[listOfItems count]];
    
    
    
    
    //[myButton release];
    
    
    
    
    //btn.currentTitle = "Teste";
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Set up the cell...
    NSString *cellValue = [listOfItems objectAtIndex:indexPath.row];
    cell.text = cellValue;
    
    return cell;
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
