//
//  InputController.m
//  ContactList
//
//  Created by Anthony Coelho on 2016-05-03.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "InputController.h"

@implementation InputController

-(NSString *)inputForPrompt:(NSString *)promptString{
    
    NSLog(@"%@\n",promptString);
    
    char string[255];
    
    
    printf("Please enter your choice: ");
    fgets(string, 255, stdin);
    
    
    NSString *inputString = [[NSString alloc] initWithFormat:@"%s",string];
    
    
    return [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""] ;
}

-(NSString *)getFullName{
    
    char string[255];
    
    
    printf("Please enter the contact's full name: ");
    fgets(string, 255, stdin);
    
    
    NSString *inputString = [[NSString alloc] initWithFormat:@"%s",string];
    
    
    return [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""] ;

    
}
-(NSString *)getEmail{
    
    char string[255];
    
    
    printf("Please enter the contact's email: ");
    fgets(string, 255, stdin);
    
    
    NSString *inputString = [[NSString alloc] initWithFormat:@"%s",string];
    
    
    return [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""] ;
    
}

@end
