//
//  NSNotificationCenter+NotificationsOptions.h
//  table1
//
//  Created by Мариам Б. on 19.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface NSNotificationCenter (NotificationsOptions)

+ (void) create_Notif: (NSString *) name_Notif Selector: (SEL) name_Method Object: (UIViewController*) controller;
+ (void) delete_Notif;
+ (void) call_Notif: (NSString *) name_Notif Dictionary: (NSDictionary *) dictionary;
+ (void) call_Notif_With_Data: (NSString *) name_Notif;

@end
