//
//  main.m
//  Contact List
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        InputCollector *furtherPrompt = [[InputCollector alloc] init];
        Contact *number1 = [[Contact alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        
        BOOL loopOn = YES;
        
        while (loopOn == YES) {
            
            NSString *promptString = @"What would you like do next? \nnew - Create a new contact \nlist - List all contacts \nquit - Exit Application";
            NSString *usernameInput = [inputCollector inputForPrompt:promptString];
            
            if ([usernameInput isEqualToString:@"quit"]) {
                NSLog(@"TOODLES");
                break;
            } else if ([usernameInput isEqualToString:@"new"]) {
                NSString *fullName = [furtherPrompt inputForPrompt:@"please enter full name of contact"];
                NSString *email = [furtherPrompt inputForPrompt:@"please enter email of contact"];
                number1.name = fullName;
                number1.email = email;
                
            }
            
            
            
        }
    }
    return 0;
}
