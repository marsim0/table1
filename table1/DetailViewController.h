//
//  DetailViewController.h
//  table
//
//  Created by Мариам Б. on 09.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) NSString *word;
@property (strong, nonatomic) NSString *descript;
@property (strong, nonatomic) NSString *englishTranslation;


@property (strong, nonatomic) IBOutlet UILabel *label_Word;
@property (strong, nonatomic) IBOutlet UITextView *textView_Description;
@property (strong, nonatomic) IBOutlet UILabel *label_EnglishTranslation;
@property (strong, nonatomic) IBOutlet UIImageView *ImageView_DetailImage;


//@property (strong, nonatomic) IBOutlet UIImageView *imageView_DetailImage;


@end
