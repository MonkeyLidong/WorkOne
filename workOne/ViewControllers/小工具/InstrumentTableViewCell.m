//
//  InstrumentTableViewCell.m
//  workOne
//
//  Created by lishu tech on 16/5/3.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "InstrumentTableViewCell.h"
#import "PrefixHeader.pch"
#import "Masonry.h"
@implementation InstrumentTableViewCell


-(void)drawRect:(CGRect)rect{
    
    [self.imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(kWidth/5);
    }];
    
//    [self.instLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//       
//        make.width.mas_equalTo(200);
//    }];
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
