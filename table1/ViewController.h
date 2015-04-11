//
//  ViewController.h
//  table1
//
//  Created by Мариам Б. on 09.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, assign) BOOL isFirstArray;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

