//
//  ContactVO.h
//  window-app-1
//
//  Created by Cristiano Caldas on 6/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ContactVO : NSObject {
    @private NSString *_name;
    @private NSString *_email;
    @private NSString *_phone;
}

@property NSString *name;
@property NSString *email;
@property NSString *phone;

-(id)initWithValues:(NSString *)name email:(NSString *)email phone:(NSString *)phone;

@end
