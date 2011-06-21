//
//  ContactVO.m
//  window-app-1
//
//  Created by Cristiano Caldas on 6/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ContactVO.h"


@implementation ContactVO

@synthesize name = _name;
@synthesize email = _email;
@synthesize phone = _phone;

-(id)initWithValues:(NSString *)name email:(NSString *)email phone:(NSString *)phone {
    self.name = name;
    self.email = email;
    self.phone = phone;
    
    return self;
}

@end
