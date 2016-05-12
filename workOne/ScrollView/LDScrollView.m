//
//  HeaderScrollView.m
//  workOne
//
//  Created by lishu tech on 16/5/4.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "LDScrollView.h"
#import "PrefixHeader.pch"

@implementation LDScrollView


-(instancetype)initWithFrame:(CGRect)frame withImgArray:(NSMutableArray *)array{
    if (self = [super initWithFrame:frame]) {
        
        self.scrollEnabled = YES;
        self.pagingEnabled = YES;
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.contentSize = CGSizeMake(array.count * self.frame.size.width, self.frame.size.height);
        for (NSInteger i = 0; i < array.count; i++) {
            
            UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width * i, 0, self.frame.size.width, self.frame.size.height)];
            imgView.image = [UIImage imageNamed:array[i]];
            imgView.contentMode = UIViewContentModeScaleToFill;
            [self addSubview:imgView];
        }
    }
    return self;
}
@end
