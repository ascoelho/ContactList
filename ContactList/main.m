//
//  main.m
//  ContactList
//
//  Created by Anthony Coelho on 2016-05-03.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputController.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        NSString *promptString = @"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application";
        
        InputController *inputControl = [[InputController alloc] init];
        
        BOOL quit = NO;
        
        ContactList *contactList = [[ContactList alloc] init];
        
        while (quit == NO) {

        
            NSString *inputString = [inputControl inputForPrompt:promptString];

            
            if ([inputString isEqualToString:@"quit"]) {
                NSLog(@"Quiting program. See you later!");
                quit = YES;
            }
            else if ([inputString isEqualToString:@"new"]) {
                
                Contact *newContact = [[Contact alloc] init];
                newContact.fullName = [inputControl getFullName];
                newContact.email = [inputControl getEmail];
                
                [contactList addContact:newContact];
 
                
            }
            else if ([inputString isEqualToString:@"list"]) {
            
                [contactList list];
            
            }
        }
        
        
    }
    return 0;
}
