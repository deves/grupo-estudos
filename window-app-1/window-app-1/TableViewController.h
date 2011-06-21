//
//  TableViewController.h
//  window-app-1
//
//  Created by Cristiano Caldas on 6/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseUIViewController.h"


@interface TableViewController : BaseUIViewController <UITableViewDelegate> {
    UITableView *tableView;
    NSArray *data;
}

//@property (nonatomic, retain) MainViewController *mainController;
//- (void)connectionDidFinishLoading:(NSURLConnection *)connection;

@end
