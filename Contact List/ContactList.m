//
//  ContactList.m
//  Contact List
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.contacts addObject:newContact];
}

-(void)printContactList {
    int index = 0;
    for (Contact *contact in _contacts) {
        NSLog(@"%i: %@", index, contact.name);
        index++;
    }
}

@end
