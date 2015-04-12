//
//  DetailViewController.m
//  table
//
//  Created by Мариам Б. on 09.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import "DetailViewController.h"


@interface DetailViewController ()

- (IBAction)backButton:(id)sender;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label_Word.text = self.word;
    self.label_EnglishTranslation.text = self.englishTranslation;
    self.textView_Description.text = self.descript;
    UIImage * image = [UIImage imageNamed: [NSString stringWithFormat: @"%@.png", self.englishTranslation]];
    self.ImageView_DetailImage.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
