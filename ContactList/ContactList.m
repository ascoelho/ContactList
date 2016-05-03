//
//  ContactList.m
//  ContactList
//
//  Created by Anthony Coelho on 2016-05-03.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

-(instancetype)init{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
    [self.contacts addObject:newContact];
    
}


-(void)list{
//    #: <full name> ()
    int i;
    for (i=0; i < self.contacts.count; i++){
            NSLog(@"%d: %@\n",i,[self.contacts[i] fullName]);
    }

}



@end
