//
//  Community_1TableViewCell.m
//  workOne
//
//  Created by lishu tech on 16/5/7.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "Community_1TableViewCell.h"
#import "PrefixHeader.pch"
#import "UIImageView+CornerRadius.h"
#define BUTTON_WID (kWidth-40-40*kHeightScale*4)/3
@implementation Community_1TableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self addSubview:self.titleLab];
        [self addSubview:self.arrowImgview];
        [self addSubview:self.lineLab];
        /*****好几个imgView和label****/
        
        [self addSomeImgView];
        
    }
    return self;
}
-(UILabel *)titleLab{
    if (!_titleLab) {
        /***热门社区**/
        self.titleLab = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50*kWidthScale, 15*kHeightScale)];
        self.titleLab.text = @"热门社区";
        self.titleLab.font = [UIFont systemFontOfSize:12];
        self.titleLab.textColor = [UIColor blackColor];
        self.titleLab.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLab;
}
-(UIImageView *)arrowImgview{
    if (!_arrowImgview) {
        /***button箭头***/
        self.arrowImgview = [[UIImageView alloc] initWithFrame:CGRectMake(kWidth - 15*kWidthScale-10, 10, 15*kWidthScale, 15*kHeightScale)];
        self.arrowImgview.image = [UIImage imageNamed:@"a"];
        self.arrowImgview.contentMode = UIViewContentModeScaleToFill;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
        [self.arrowImgview addGestureRecognizer:tap];
    }
    return _arrowImgview;
}
-(void)tapAction{
    
    /**
     *
     *
     **/
    
}
-(UILabel *)lineLab{
    if (!_lineLab) {
        /***横线***/
        self.lineLab = [[UILabel alloc] initWithFrame:CGRectMake(10, 10+15*kHeightScale+10, kWidth-20, 1)];
        self.lineLab.backgroundColor = [UIColor grayColor];
    }
    return _lineLab;
}


-(void)addSomeImgView{
    
    for (int i = 0; i < 4; i++) {
        
        UIImageView *imgview = [[UIImageView alloc] initWithFrame:CGRectMake(20+50*i+i*BUTTON_WID, 10+15*kHeightScale+10+1+20, 40*kHeightScale, 40*kHeightScale)];
        imgview.layer.cornerRadius = 20*kHeightScale;
        imgview.layer.masksToBounds = YES;
//        [imgview zy_cornerRadiusRoundingRect];
        imgview.backgroundColor = [UIColor cyanColor];
        [self addSubview:imgview];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20+50*i+i*BUTTON_WID, 10+55*kHeightScale+10+1+20+5, 40*kHeightScale, 20)];
        label.text = self.titleArray[i];
        label.textAlignment = NSTextAlignmentCenter;
//        label.backgroundColor = [UIColor yellowColor];
        [self addSubview:label];
        
    }
    
}

-(NSMutableArray *)titleArray{
    
    if (!_titleArray) {
        self.titleArray = [NSMutableArray arrayWithObjects:@"情感",@"育儿",@"健身",@"女生",@"糖尿病",@"美容",@"皮肤病",nil];
    }
    return _titleArray;
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
