//
//  ContactsModel.h
//  window-app-1
//
//  Created by Cristiano Caldas on 6/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactVO.h"


@interface ContactsModel : NSObject {
    NSMutableArray *data;
}

-(NSMutableArray *)getContacts;
-(ContactVO *)getContactAt:(NSUInteger *)index;

@end
