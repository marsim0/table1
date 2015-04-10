//
//  ViewController.m
//  table
//
//  Created by Мариам Б. on 05.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray * rusWords;
@property (nonatomic, strong) NSArray * engWords;
@property (nonatomic, strong) NSMutableArray * arrayM;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * stringRusWords = @"книга,собака,ложка,дом";
    NSString * stringEngWords = @"book,dog,spoon,house";
    NSString * desBook = @"один из видов печатной продукции: непериодическое издание, состоящее из сброшюрованных или отдельных бумажных листов (страниц) или тетрадей, на которых нанесена типографским или рукописным способом текстовая и графическая (иллюстрации) информация, имеющая объём более сорока восьми страниц и, как правило, твёрдый переплёт.";
    NSString * desDog = @"домашнее животное, одно из наиболее распространённых (наряду с кошкой) «животных-компаньонов».";
    NSString * desSpoon = @" столовый прибор, отдалённо напоминающий небольшую лопатку в виде небольшого мелкого сосуда-чашечки (черпала), соединённого перемычкой с держалом (рукояткой). Размер чашечки соразмерен размеру рта человека. Используется как столовый прибор, лабораторный инструмент и т. п.";
    NSString * desHouse = @"сооружение, место, в котором обитают люди или животные.";
    
    
    self.rusWords = [stringRusWords componentsSeparatedByString:@","];
    self.engWords = [stringEngWords componentsSeparatedByString:@","];
    self.arrayM = [NSMutableArray array];
    
    
    for (int i = 0; i < self.rusWords.count; i++) {
        NSMutableDictionary * dictM = [[NSMutableDictionary alloc]init];
        [dictM setObject: [self.rusWords objectAtIndex:i] forKey:@"rus"];
        [dictM setObject: [self.engWords objectAtIndex:i] forKey:@"eng"];
        
        NSString * rusWord = [self.rusWords objectAtIndex:i];
        
        if ([rusWord isEqualToString:@"книга"]) {
            [dictM setObject:desBook forKey:@"description"];
        } else if ([rusWord isEqualToString:@"собака"]) {
            [dictM setObject:desDog forKey:@"description"];
        } else if([rusWord isEqualToString:@"дом"]) {
            [dictM setObject:desHouse forKey:@"description"];
        } else if([rusWord isEqualToString:@"ложка"]) {
            [dictM setObject:desSpoon forKey:@"description"];
        }
        
        [self.arrayM addObject:dictM];
    }

    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - UITableViewDelegate

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        
    return self.arrayM.count-1;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * simpleTableIdentifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier: simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [[self.arrayM objectAtIndex:indexPath.row]valueForKey:@"rus"];
    cell.detailTextLabel.text = [[self.arrayM objectAtIndex:indexPath.row]valueForKey:@"eng"];
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailViewController * detal = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    [self.navigationController pushViewController:detal animated:true];
    //[self.navigationController popViewControllerAnimated:YES];
    NSDictionary * dictionary = [self.arrayM objectAtIndex:indexPath.row];
    
    detal.word = [dictionary objectForKey:@"rus"];
    detal.englishTranslation = [dictionary objectForKey:@"eng"];
    detal.descript = [dictionary objectForKey:@"description"];
    
        
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
