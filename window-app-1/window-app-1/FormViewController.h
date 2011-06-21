//
//  FormViewController.h
//  window-app-1
//
//  Created by Cristiano Caldas on 6/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseUIViewController.h"
#import "ContactVO.h"

@interface FormViewController : BaseUIViewController {
    UILabel *lbl_name;
    UILabel *lbl_email;
    UILabel *lbl_phone;
}

-(void)setContactIndex:(NSUInteger *)index;

@end
