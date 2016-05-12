//
//  Community_2TableViewCell.m
//  workOne
//
//  Created by lishu tech on 16/5/7.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "Community_2TableViewCell.h"
#import "PrefixHeader.pch"
#import "UIImageView+CornerRadius.h"
@implementation Community_2TableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
       
        [self addSubview:self.titleLab];
        [self addSubview:self.contentLab];
        [self addSomeImgView:3];
        [self addSubview:self.typeAndTimeLab];
        [self addSubview:self.lineLab];
        [self addSubview:self.iconImgView];
        [self addSubview:self.nameLab];
        [self addSubview:self.tapButton];
        [self addSubview:self.tapCountLab];
        [self addSubview:self.messageButton];
        [self addSubview:self.messageCountLab];

    }
    return self;
}
-(void)setFrame:(CGRect)frame{
    frame.origin.y += 10;
    frame.size.height-=10;
     
    [super setFrame:frame];
    
}
-(UILabel *)titleLab{
    if (!_titleLab) {
        
        self.titleLab = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, kWidth-20, 25*kHeightScale)];
        self.titleLab.backgroundColor = [UIColor cyanColor];
        self.titleLab.font = [UIFont fontWithName:@"Helvetica-Bold" size:20];
        self.titleLab.text = @"这是大标题";

    }
    return _titleLab;
}
-(UILabel *)contentLab{
    
    if (!_contentLab) {
        self.contentLab = [[UILabel alloc] initWithFrame:CGRectMake(10, 10+self.titleLab.frame.size.height+5, kWidth-20, 20*kHeightScale)];
        self.contentLab.font = [UIFont systemFontOfSize:13];
        self.contentLab.backgroundColor = [UIColor orangeColor];
        self.contentLab.text = @"这是内容";
    }
    return _contentLab;
}

-(void)addSomeImgView:(NSInteger)imgCount{
    
    for (NSInteger i = 0; i < imgCount; i++) {
        self.contentImg = [[UIImageView alloc] initWithFrame:CGRectMake(20+i*(kWidth-40-20)/3+i*10, self.contentLab.frame.origin.y +  20*kHeightScale + 5, (kWidth-40-20)/3, (kWidth-40-20)/3)];
        self.contentImg.backgroundColor = [UIColor yellowColor];
        [self addSubview:self.contentImg];
    }
}
-(UILabel *)typeAndTimeLab{
    
    if (!_typeAndTimeLab) {
        
        self.typeAndTimeLab = [[UILabel alloc] initWithFrame:CGRectMake(10, self.contentImg.frame.origin.y +
        (kWidth-40-20)/3+10, (kWidth-20)/4, 10*kHeightScale)];
        self.typeAndTimeLab.backgroundColor = [UIColor magentaColor];
        self.typeAndTimeLab.font = [UIFont systemFontOfSize:12];
        self.typeAndTimeLab.text = @"类型.时间";
        
    }
    return _typeAndTimeLab;
}
-(UILabel *)lineLab{
    
    if (!_lineLab) {
        
        self.lineLab = [[UILabel alloc] initWithFrame:CGRectMake(10, self.typeAndTimeLab.frame.origin.y + 10*kHeightScale +10, kWidth-20, 1)];
        self.lineLab.backgroundColor = [UIColor grayColor];
    }
    return _lineLab;
}
-(UIImageView *)iconImgView{
    if (!_iconImgView) {
        
        self.iconImgView = [[UIImageView alloc] initWithFrame:CGRectMake(10, self.lineLab.frame.origin.y + 11, 20*kHeightScale, 20*kHeightScale)];
        [self.iconImgView zy_cornerRadiusRoundingRect];
//        self.iconImgView.layer.cornerRadius = 10*kHeightScale;
//        self.iconImgView.layer.masksToBounds = YES;
        self.iconImgView.image = [UIImage imageNamed:@"22"];
        self.iconImgView.contentMode = UIViewContentModeScaleToFill;
    }
    return _iconImgView;
}
-(UILabel *)nameLab{
    if (!_nameLab) {
        
        self.nameLab = [[UILabel alloc] initWithFrame:CGRectMake(10 + 20*kHeightScale + 5 , self.iconImgView.frame.origin.y+3, (kWidth-20)/2.5, 15*kHeightScale)];
        self.nameLab.backgroundColor = [UIColor greenColor];
        self.nameLab.font = [UIFont systemFontOfSize:14];
        self.nameLab.text = @"用户名";
    }
    return _nameLab;
}
-(UIButton *)tapButton{
    if (!_tapButton) {
        self.tapButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.tapButton.frame = CGRectMake(self.nameLab.frame.origin.x+30+(kWidth-20)/2.5, self.nameLab.frame.origin.y, 15*kHeightScale, 15*kHeightScale);
        self.tapButton.backgroundColor = [UIColor grayColor];
    }
    return _tapButton;
}
-(UILabel *)tapCountLab{
    if (!_tapCountLab) {
        self.tapCountLab = [[UILabel alloc] initWithFrame:CGRectMake(self.tapButton.frame.origin.x+15*kHeightScale, self.tapButton.frame.origin.y, 15*kHeightScale, 15*kHeightScale)];
        self.tapCountLab.backgroundColor = [UIColor redColor];
        self.tapCountLab.text = @"1";
        self.tapCountLab.font = [UIFont systemFontOfSize:11];
    }
    return _tapCountLab;
}
-(UIButton *)messageButton{
    if (!_messageButton) {
        self.messageButton = [UIButton buttonWithType:UIButtonTypeSystem];
        self.messageButton.frame = CGRectMake(self.tapCountLab.frame.origin.x+30+15*kHeightScale,self.tapButton.frame.origin.y , 15*kHeightScale, 15*kHeightScale);
        self.messageButton.backgroundColor = [UIColor grayColor];
    }
    return _messageButton;
}
-(UILabel *)messageCountLab{
    if (!_messageCountLab) {
        self.messageCountLab = [[UILabel alloc] initWithFrame:CGRectMake(self.messageButton.frame.origin.x+15*kHeightScale,self.tapButton.frame.origin.y, 15*kHeightScale, 15*kHeightScale)];
        self.messageCountLab.backgroundColor = [UIColor redColor];
        self.messageCountLab.text = @"2";
        self.messageCountLab.font = [UIFont systemFontOfSize:10];
    }
    return _messageCountLab;
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
