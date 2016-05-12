//
//  UserInfoTableViewCell.m
//  workOne
//
//  Created by lishu tech on 16/5/3.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "UserInfoTableViewCell.h"
#import "Masonry.h"
#import "PrefixHeader.pch"
@implementation UserInfoTableViewCell

-(void)drawRect:(CGRect)rect{
    
    [self.imgView mas_makeConstraints:^(MASConstraintMaker *make) {
       

        make.width.mas_equalTo(30*(kWidth/320));


    }];
    self.imgView.layer.cornerRadius = (30*(kWidth/320))/2;
//    self.imgView.layer.cornerRadius = (20*(kHeight/kWidth))/2;
    self.imgView.layer.masksToBounds = YES;
    self.imgView.contentMode = UIViewContentModeScaleToFill;
  
    
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
