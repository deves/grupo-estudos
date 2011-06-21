//
//  TableViewController.m
//  window-app-1
//
//  Created by Cristiano Caldas on 6/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TableViewController.h"
#import "FormViewController.h"
#import "MainViewController.h"
#import "JSON.h"
#import "SBJson.h"
#import "ContactsModel.h"
#import "ContactVO.h"


@implementation TableViewController

- (void)setup {
    self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 320, 460)];
    
    
    
     self.title = @"Contacts";
    
    data = [[[ContactsModel alloc] init] getContacts];
    
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    tableView.delegate      = self;
    tableView.dataSource    = self;
    
    [self.view addSubview:tableView];
    [tableView release];
    
    //NSString *file = [[NSString alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource: @"data" ofType: @"json"] encoding:NSASCIIStringEncoding error:nil];
    
    
    /*SBJsonParser *parser = [[SBJsonParser alloc] init];
    
    // Prepare URL request to download statuses from Twitter
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://twitter.com/statuses/public_timeline.json"]];
    //NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    // Perform request and get JSON back as a NSData object
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    // Get JSON as a NSString from NSData response
    NSString *json_string = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
    
    // parse the JSON response into an object
    // Here we're using NSArray since we're parsing an array of JSON status objects
    data = [parser objectWithString:json_string error:nil];
    
    // Each element in statuses is a single status
    // represented as a NSDictionary
    for (NSDictionary *status in data)
    {
        // You can retrieve individual values using objectForKey on the status NSDictionary
        // This will print the tweet and username to the console
        NSLog(@"%@ - %@", [status objectForKey:@"text"], [[status objectForKey:@"user"] objectForKey:@"screen_name"]);
    }*/
    
    
    
    


}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    [connection release];
    
    //NSString *responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
	//[responseData release];
	//check if the user returned the correct data
	//jsonArray = [responseString JSONValue];
	//NSLog(@"%@",jsonArray);
	
	    
	//NSLog(@"%i",[jsonArray count]);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    //NSLog(@"numberOfRowsInSection");
    
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    
    //cell.textLabel.text = @"Cell";
    //cell.textLabel.text = [NSString stringWithFormat:@"%@ %d", @"Cell n: ", [indexPath row]];
    //NSDictionary *dic = [data objectAtIndex:indexPath.row];
    //NSLog(@"%@", [dic objectForKey:@"text"]);
    //cell.textLabel.text = [[dic objectForKey:@"user"] objectForKey:@"screen_name"];
    //cell.textLabel.text = [data objectAtIndex:indexPath.row];
    //cell.textLabel.text = @"teste";
    ContactVO *contact = [[[ContactsModel alloc] init] getContactAt:indexPath.row];
    cell.textLabel.text = contact.name;
    NSLog(@"cell label: %@ %@ %@", contact.name, contact.email, contact.phone);
    //cell.textLabel.text = [NSString stringWithFormat:[dic objectForKey:@"user"]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
    
    //[((MainViewController *)self.navigationController) showDetails:[tableView cellForRowAtIndexPath:indexPath].textLabel.text];
     
    //NSDictionary *dic = [data objectAtIndex:indexPath.row];
    
    [((MainViewController *)self.navigationController) showDetails:indexPath.row];
    //NSLog(@"didSelect %d, %@", indexPath.row, indexPath);
    
    
    //[self.navigationController pushViewController:(UIViewController *) animated:YES];
    
    //NSLog([NSString stringWithFormat:@"%d %@", [indexPath row], @"selected"]);
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
