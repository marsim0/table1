//
//  ViewController.m
//  table
//
//  Created by Мариам Б. on 05.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "CustomTableViewCell.h"
#import "MakeArrays.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray * rusWords;
@property (nonatomic, strong) NSArray * engWords;
@property (nonatomic, strong) NSMutableArray * arrayM;
- (IBAction)backAction:(id)sender;
- (IBAction)open_FirstArray:(id)sender;
- (IBAction)open_SecondArray:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.isFirstArray) {
        [self makeFirstArray];
    } else {
        [self makeSecondArray];
    }
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - UITableViewDelegate

- (void) reloadTableView {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        
    return self.arrayM.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * simpleTableIdentifier = @"Cell";
    CustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier: simpleTableIdentifier];
    
    cell.label_WordCell.text = [[self.arrayM objectAtIndex:indexPath.row]valueForKey:@"rus"];
    cell.label_TranslationCell.text = [[self.arrayM objectAtIndex:indexPath.row]valueForKey:@"eng"];

    UIImage * image = [UIImage imageNamed: [NSString stringWithFormat: @"%@.png", [[self.arrayM objectAtIndex:indexPath.row]valueForKey:@"eng"]]];
    cell.ImageView_CellImage.image = image;
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailViewController * detal = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    [self.navigationController pushViewController:detal animated:YES];
    
    NSDictionary * dictionary = [self.arrayM objectAtIndex:indexPath.row];
    
    detal.word = [dictionary objectForKey:@"rus"];
    detal.englishTranslation = [dictionary objectForKey:@"eng"];
    detal.descript = [dictionary objectForKey:@"description"];
    
}

-(void) makeFirstArray {
    self.isFirstArray = YES;
    [self.arrayM removeAllObjects];
    self.arrayM = [MakeArrays makeFirstArray];
}

-(void) makeSecondArray {
    self.isFirstArray = NO;
    [self.arrayM removeAllObjects];
    self.arrayM = [MakeArrays makeSecondArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)open_FirstArray:(id)sender {
    [self makeFirstArray];
    [self reloadTableView];
}

- (IBAction)open_SecondArray:(id)sender {
    [self makeSecondArray];
    [self reloadTableView];
}
@end
