//
//  iphone_app_1AppDelegate.h
//  iphone-app-1
//
//  Created by Cristiano Caldas on 5/23/11.
//  Copyright 2011 Simbionte Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iphone_app_1AppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
