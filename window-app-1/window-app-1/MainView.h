//
//  MainView.h
//  window-app-1
//
//  Created by Cristiano Caldas on 6/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MainView : UIView {
    UITextField *txt_name;
    UIButton    *btn_send;
}

@property (nonatomic, retain) UITextField *txt_name;
@property (nonatomic, retain) UIButton *btn_send;

-(void)alert:(NSString *)msg;

@end
