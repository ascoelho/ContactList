//
//  InputController.h
//  ContactList
//
//  Created by Anthony Coelho on 2016-05-03.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface InputController : NSObject


-(NSString *)inputForPrompt:(NSString *)promptString;
-(NSString *)getFullName;
-(NSString *)getEmail;



@end
