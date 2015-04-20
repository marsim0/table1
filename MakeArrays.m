//
//  MakeArrays.m
//  table1
//
//  Created by Мариам Б. on 11.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import "MakeArrays.h"

@implementation MakeArrays

- (void) makeFirstArray {
    
    NSMutableArray * arrayM = [[NSMutableArray alloc]init];
    
    NSString * stringRusWords = @"книга,собака,ложка,дом";
    NSString * stringEngWords = @"book,dog,spoon,house";
    NSString * desBook = @"один из видов печатной продукции: непериодическое издание, состоящее из сброшюрованных или отдельных бумажных листов (страниц) или тетрадей, на которых нанесена типографским или рукописным способом текстовая и графическая (иллюстрации) информация, имеющая объём более сорока восьми страниц и, как правило, твёрдый переплёт.";
    NSString * desDog = @"домашнее животное, одно из наиболее распространённых (наряду с кошкой) «животных-компаньонов».";
    NSString * desSpoon = @" столовый прибор, отдалённо напоминающий небольшую лопатку в виде небольшого мелкого сосуда-чашечки (черпала), соединённого перемычкой с держалом (рукояткой). Размер чашечки соразмерен размеру рта человека. Используется как столовый прибор, лабораторный инструмент и т. п.";
    NSString * desHouse = @"сооружение, место, в котором обитают люди или животные.";
    
    NSArray * rusWords = [stringRusWords componentsSeparatedByString:@","];
    NSArray* engWords = [stringEngWords componentsSeparatedByString:@","];
    
    __block int i = 0;
    
    [rusWords enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSMutableDictionary * dictM = [[NSMutableDictionary alloc]init];
        [dictM setObject: [rusWords objectAtIndex:idx] forKey:@"rus"];
        [dictM setObject: [engWords objectAtIndex:idx] forKey:@"eng"];
        
        NSString * rusWord = [rusWords objectAtIndex:idx];
        
        if ([rusWord isEqualToString:@"книга"]) {
            [dictM setObject:desBook forKey:@"description"];
        } else if ([rusWord isEqualToString:@"собака"]) {
            [dictM setObject:desDog forKey:@"description"];
        } else if([rusWord isEqualToString:@"дом"]) {
            [dictM setObject:desHouse forKey:@"description"];
        } else if([rusWord isEqualToString:@"ложка"]) {
            [dictM setObject:desSpoon forKey:@"description"];
        }
        
        [arrayM addObject:dictM];
        i++;
        if (stop && i == rusWords.count) {
            NSDictionary * dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:arrayM, ARRAY_KEY, nil];
            [NSNotificationCenter call_Notif:ARRAY_NOTIF Dictionary:dictionary];
        }
    }];
    

}

- (void) makeSecondArray {
    
    NSMutableArray * arrayM = [[NSMutableArray alloc]init];
    
    NSString * stringRusWords = @"дерево,кошка,чашка,пляж";
    NSString * stringEngWords = @"tree,cat,cup,beach";
    
    NSArray * rusWords = [stringRusWords componentsSeparatedByString:@","];
    NSArray * engWords = [stringEngWords componentsSeparatedByString:@","];
    
    __block int i = 0;
    
    [rusWords enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSMutableDictionary * dictM = [[NSMutableDictionary alloc]init];
        [dictM setObject: [rusWords objectAtIndex:idx] forKey:@"rus"];
        [dictM setObject: [engWords objectAtIndex:idx] forKey:@"eng"];
        
        [arrayM addObject:dictM];
        i++;
        if (stop && i == rusWords.count) {
            NSDictionary * dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:arrayM, ARRAY_KEY, nil];
            [NSNotificationCenter call_Notif:ARRAY_NOTIF Dictionary:dictionary];
        }
    }];
    
}

@end

