//
//  CustomTableViewCell.h
//  table1
//
//  Created by Мариам Б. on 11.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *ImageView_CellImage;
@property (strong, nonatomic) IBOutlet UILabel *label_WordCell;
@property (strong, nonatomic) IBOutlet UILabel *label_TranslationCell;

@end
