//
//  MenuViewController.m
//  table1
//
//  Created by Мариам Б. on 11.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import "MenuViewController.h"


@interface MenuViewController ()
@property (strong, nonatomic) IBOutlet UIButton *button_First;
@property (strong, nonatomic) IBOutlet UIButton *button_Second;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.button_First addTarget:self action: @selector(go_First) forControlEvents:UIControlEventTouchUpInside];
    [self.button_Second addTarget:self action: @selector(go_Second) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) go_First {
    ViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    [self.navigationController pushViewController:view animated:YES];
    view.isFirstArray = YES;
}

- (void) go_Second {
    ViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    [self.navigationController pushViewController:view animated:YES];
    view.isFirstArray = NO;
}



//- (IBAction)menuSwitcher:(id)sender {
//    UISwitch * mSwitcher= (id) sender;
//    if (mSwitcher.on) {
//        NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys: @"TEST_OBJECT", TEST_KEY, nil];
//        [NSNotificationCenter call_Notif:TEST_NOTIF Dictionary:dict];
//    } else {
//    
//    }
//    
//}
//- (void) notif_Metod : (NSNotification *) notif{
//    NSString * string = [notif.userInfo valueForKey: TEST_KEY];
//}
//- (void) viewWillAppear:(BOOL)animated {
//    [NSNotificationCenter create_Notif:TEST_NOTIF Selector:@selector(notif_Metod:) Object:self];
//}
//- (void) viewDidAppear:(BOOL)animated {
//
//}
//- (void) viewWillDisappear:(BOOL)animated {
//    [NSNotificationCenter delete_Notif];
//}
//- (void) viewDidDisappear:(BOOL)animated {
//
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
