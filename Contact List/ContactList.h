//
//  ContactList.h
//  Contact List
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

@interface ContactList : NSObject

@property NSMutableArray* contacts;

-(void)addContact:(Contact *)newContact;

@end
