//
//  MainViewController.h
//  window-app-1
//
//  Created by Cristiano Caldas on 6/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"
#import "TableViewController.h"
#import "FormViewController.h"
#import "BaseUIViewController.h"
#import "ContactVO.h"

@interface MainViewController : UINavigationController {
    //MainView *view;
    UINavigationController *navigator;
    
    TableViewController *tableController;
    FormViewController *formController;
    
    UIButton *btn_form;
}

-(void)showTable;
-(void)showDetails:(NSUInteger *)index;
//-(MainView *)getView;
//-(void)btn_form_touchDown:(id *)target;
-(void)setup;

@end
