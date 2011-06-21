//
//  ContactsModel.m
//  window-app-1
//
//  Created by Cristiano Caldas on 6/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ContactsModel.h"

@implementation ContactsModel

-(id)init {
    data = [[NSMutableArray alloc] init];
    
    ContactVO *contact;
    NSString *index;
    for (int i = 0; i < 20; i++) {
        index = [NSString stringWithFormat:@"%d", i];
        contact = [[ContactVO alloc] initWithValues:[NSString stringWithFormat:@"Contact %@", index] email:[NSString stringWithFormat:@"Email %@", index] phone:[NSString stringWithFormat:@"Phone %@", index]];
        [data addObject:contact];
        //[contact release];
    }
    
    return self;
}

-(NSMutableArray *)getContacts {
    return data;
}

-(ContactVO *)getContactAt:(NSUInteger *)index {
    return [[self getContacts] objectAtIndex:index];
}

@end
