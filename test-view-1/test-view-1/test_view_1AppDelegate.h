//
//  test_view_1AppDelegate.h
//  test-view-1
//
//  Created by Cristiano Caldas on 5/23/11.
//  Copyright 2011 Simbionte Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@class test_view_1ViewController;

@interface test_view_1AppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet test_view_1ViewController *viewController;

@end
