//
//  NSNotificationCenter+NotificationsOptions.m
//  table1
//
//  Created by Мариам Б. on 19.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import "NSNotificationCenter+NotificationsOptions.h"
#import "ViewController.h"

@implementation NSNotificationCenter (NotificationsOptions)

+ (void) create_Notif: (NSString *) name_Notif Selector: (SEL) name_Method Object: (UIViewController *) controller {
    [[NSNotificationCenter defaultCenter] addObserver: controller selector:name_Method name: name_Notif object:nil];
}

+ (void) delete_Notif {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

+ (void) call_Notif: (NSString *) name_Notif Dictionary: (NSDictionary *) dictionary {
    [[NSNotificationCenter defaultCenter]postNotificationName: name_Notif object:nil userInfo:dictionary];
}

+ (void) call_Notif_With_Data: (NSString *) name_Notif {
    [[NSNotificationCenter defaultCenter]postNotificationName: name_Notif object:nil];
}

@end
