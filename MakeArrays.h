//
//  MakeArrays.h
//  table1
//
//  Created by Мариам Б. on 11.04.15.
//  Copyright (c) 2015 Мариам Б. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MakeArraysDelegate;

@interface MakeArrays : NSObject

- (void) makeSecondArray;
- (void) makeFirstArray;

@property (weak, nonatomic) id <MakeArraysDelegate> delegate;

@end

@protocol MakeArraysDelegate <NSObject>

@required

- (void) makesArraysFirstArrayReady : (MakeArrays*) makeArrays FirstArray: (NSMutableArray*) firstArray;
- (void) makesArraysSecondArrayReady : (MakeArrays*) makeArrays SecondArray: (NSMutableArray*) secondArray;

@end
