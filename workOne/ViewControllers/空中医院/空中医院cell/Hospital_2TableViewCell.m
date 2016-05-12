//
//  Hospital_2TableViewCell.m
//  
//
//  Created by lishu tech on 16/5/10.
//
//

#import "Hospital_2TableViewCell.h"
#import "PrefixHeader.pch"
#import "UIImageView+CornerRadius.h"
@implementation Hospital_2TableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self addSubview:self.headerBtn];
        [self.headerBtn addSubview:self.greenLine];
        [self.headerBtn addSubview:self.strLabel];
        
        [self addSubview:self.lineX1];
        
        [self addSubview:self.midBtn];
        [self.midBtn addSubview:self.doctorImgView];
        [self.midBtn addSubview:self.titleLabel];
        [self.midBtn addSubview:self.doctorInfo];
        
        [self addSubview:self.lineX2];
        [self addSubview:self.lineY];
    
        [self addSubview:self.leftBtn];
        [self.leftBtn addSubview:self.titleLabel_1];
        [self.leftBtn addSubview:self.leftIconImgView];
        [self.leftBtn addSubview:self.leftNameLabel];
        [self.leftBtn addSubview:self.leftDocInfo];
        
        [self addSubview:self.rightBtn];
        [self.rightBtn addSubview:self.titleLabel_2];
        [self.rightBtn addSubview:self.rightIconImgView];
        [self.rightBtn addSubview:self.rightNameLabel];
        [self.rightBtn addSubview:self.rightDocInfo];
        
        
    }
    return self;
}
-(UIButton *)headerBtn{
    if (!_headerBtn) {
        self.headerBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//        self.headerBtn.backgroundColor = [UIColor cyanColor];
        self.headerBtn.frame = CGRectMake(0, 0, kWidth, 20*kHeightScale+20);
        [self.headerBtn addTarget: self action:@selector(headerBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _headerBtn;
}
-(void)headerBtnAction{
    NSLog(@"名医讲堂");
}
-(UILabel *)greenLine{
    if (!_greenLine) {
        self.greenLine = [[UILabel alloc] initWithFrame:CGRectMake(FRAME_X, FRAME_Y, 2, 20*kHeightScale)];
        self.greenLine.backgroundColor = [UIColor greenColor];
    }
    return _greenLine;
}
-(UILabel *)strLabel{
    if (!_strLabel) {
        self.strLabel = [[UILabel alloc] initWithFrame:CGRectMake(FRAME_X+2+10, FRAME_Y, 100*kHeightScale, 20*kHeightScale)];
        self.strLabel.text = @"名医讲堂";
        self.strLabel.textColor = [UIColor blackColor];
        self.strLabel.font = [UIFont systemFontOfSize:18];
//        self.strLabel.backgroundColor = [UIColor yellowColor];
    }
    return _strLabel;
}
-(UILabel *)lineX1{
    if (!_lineX1) {
        self.lineX1 = [[UILabel alloc] initWithFrame:CGRectMake(0, self.headerBtn.frame.size.height, kWidth, 1)];
        self.lineX1.backgroundColor = [UIColor grayColor];
    }
    return _lineX1;
}
-(UIButton *)midBtn{
    if (!_midBtn) {
        self.midBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        self.midBtn.frame = CGRectMake(0, self.lineX1.frame.origin.y+1, kWidth, 70*kHeightScale);
    }
    return _midBtn;
}
-(UIImageView *)doctorImgView{
    if (!_doctorImgView) {
        self.doctorImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 70*kHeightScale, 70*kHeightScale)];
        self.doctorImgView.image = [UIImage imageNamed:@"11"];
        self.doctorImgView.contentMode = UIViewContentModeScaleToFill;
    }
    return _doctorImgView;
}
-(UILabel *)titleLabel{
    if (!_titleLabel) {
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.doctorImgView.frame.size.width+5, 20, kWidth-self.doctorImgView.frame.size.width-20, 20*kHeightScale)];
        self.titleLabel.text = @"玛利亚玛利亚";
//        self.titleLabel.backgroundColor = [UIColor yellowColor];
        self.titleLabel.font = [UIFont systemFontOfSize:18];
        self.titleLabel.textColor = [UIColor greenColor];
    }
    return _titleLabel;
}
-(UILabel *)doctorInfo{
    if (!_doctorInfo) {
        self.doctorInfo = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.frame.origin.x, self.titleLabel.frame.origin.y+self.titleLabel.frame.size.height, self.titleLabel.frame.size.width, self.titleLabel.frame.size.height)];
        self.doctorInfo.text = @"医生信息";
        self.doctorInfo.textAlignment = NSTextAlignmentRight;
        self.doctorInfo.font = [UIFont systemFontOfSize:15];
        self.doctorInfo.textColor = [UIColor grayColor];
//        self.doctorInfo.backgroundColor = [UIColor orangeColor];
    }
    return _doctorInfo;
}
-(UILabel *)lineX2{
    if (!_lineX2) {
        self.lineX2 = [[UILabel alloc] initWithFrame:CGRectMake(0, self.midBtn.frame.origin.y+self.midBtn.frame.size.height, kWidth, 1)];
        self.lineX2.backgroundColor = [UIColor grayColor];
    }
    return _lineX2;
}
-(UILabel *)lineY{
    if (!_lineY) {
        self.lineY = [[UILabel alloc] initWithFrame:CGRectMake(kWidth/2-0.5*kHeightScale, self.lineX2.frame.origin.y+1, 1*kWidthScale, 70*kHeightScale)];
        self.lineY.backgroundColor = [UIColor grayColor];
    }
    return _lineY;
}
-(UIButton *)leftBtn{
    if (!_leftBtn) {
        self.leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        self.leftBtn.frame = CGRectMake(0, self.lineX2.frame.origin.y+1, kWidth/2-0.5*kHeightScale, self.lineY.frame.size.height);
//        self.leftBtn.backgroundColor = [UIColor cyanColor];
        [self.leftBtn addTarget:self action:@selector(leftBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _leftBtn;
}
-(void)leftBtnAction{
    NSLog(@"左边的button");
}
-(UILabel *)titleLabel_1{
    if (!_titleLabel_1) {
        self.titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(FRAME_X, FRAME_Y, self.leftBtn.frame.size.width-20, (self.leftBtn.frame.size.height-30)/2)];
//        self.titleLabel_1.backgroundColor = [UIColor greenColor];
        self.titleLabel_1.textColor = [UIColor blackColor];
        self.titleLabel_1.numberOfLines = 0;
        self.titleLabel_1.text = @"发发发发嘎嘎嘎嘎嘎嘎嘎gagagagagg";
        self.titleLabel_1.font = [UIFont systemFontOfSize:15];
    }
    return _titleLabel_1;
}
-(UIImageView *)leftIconImgView{
    if (!_leftIconImgView) {
        self.leftIconImgView = [[UIImageView alloc] initWithFrame:CGRectMake(FRAME_X, self.titleLabel_1.frame.origin.y+self.titleLabel_1.frame.size.height+10, 20*kHeightScale, 20*kHeightScale)];
        [self.leftIconImgView zy_cornerRadiusRoundingRect];
        self.leftIconImgView.image = [UIImage imageNamed:@"123"];
        self.leftIconImgView.contentMode = UIViewContentModeScaleToFill;
    }
    return _leftIconImgView;
}
-(UILabel *)leftNameLabel{
    if (!_leftNameLabel) {
        self.leftNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.leftIconImgView.frame.origin.x + self.leftIconImgView.frame.size.width + 10, self.leftIconImgView.frame.origin.y, (self.leftBtn.frame.size.width - 30 - self.leftIconImgView.frame.size.width)/2 - 20, self.leftIconImgView.frame.size.height)];
        self.leftNameLabel.textColor = [UIColor blackColor];
        self.leftNameLabel.font = [UIFont systemFontOfSize:15];
//        self.leftNameLabel.backgroundColor = [UIColor redColor];
        self.leftNameLabel.text = @"路飞";
    }
    return _leftNameLabel;
}
-(UILabel *)leftDocInfo{
    if (!_leftDocInfo) {
        self.leftDocInfo = [[UILabel alloc] initWithFrame:CGRectMake(self.leftNameLabel.frame.origin.x + self.leftNameLabel.frame.size.width + 10, self.leftNameLabel.frame.origin.y, self.leftNameLabel.frame.size.width+30, self.leftNameLabel.frame.size.height)];
        self.leftDocInfo.textColor = [UIColor grayColor];
        self.leftDocInfo.font = [UIFont systemFontOfSize:15];
        self.leftDocInfo.text = @"船长";
//        self.leftDocInfo.backgroundColor = [UIColor yellowColor];
    }
    return _leftDocInfo;
}
-(UIButton *)rightBtn{
    if (!_rightBtn) {
        self.rightBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//        self.rightBtn.backgroundColor = [UIColor yellowColor];
        self.rightBtn.frame = CGRectMake(self.lineY.frame.origin.x + 1*kHeightScale, self.leftBtn.frame.origin.y, self.leftBtn.frame.size.width, self.leftBtn.frame.size.height);
        [self.rightBtn addTarget:self action:@selector(rightBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _rightBtn;
}
-(void)rightBtnAction{
    NSLog(@"右边的button");
}
-(UILabel *)titleLabel_2{
    if (!_titleLabel_2) {
        self.titleLabel_2 = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel_1.frame.origin.x, self.titleLabel_1.frame.origin.y, self.titleLabel_1.frame.size.width, self.titleLabel_1.frame.size.height)];
//        self.titleLabel_2.backgroundColor = [UIColor greenColor];
        self.titleLabel_2.font = [UIFont systemFontOfSize:15];
        self.titleLabel_2.numberOfLines = 0;
        self.titleLabel_2.textColor = [UIColor blackColor];
        self.titleLabel_2.text = @"哈哈哈哈哈哈哈哈哈哈哈";
    }
    return _titleLabel_2;
}
-(UIImageView *)rightIconImgView{
    if (!_rightIconImgView) {
        self.rightIconImgView = [[UIImageView alloc] initWithFrame:CGRectMake(self.leftIconImgView.frame.origin.x, self.leftIconImgView.frame.origin.y, self.leftIconImgView.frame.size.width, self.leftIconImgView.frame.size.height)];
        [self.rightIconImgView zy_cornerRadiusRoundingRect];
        self.rightIconImgView.image = [UIImage imageNamed:@"123"];
        self.rightIconImgView.contentMode = UIViewContentModeScaleToFill;
    }
    return _rightIconImgView;
}
-(UILabel *)rightNameLabel{
    if (!_rightNameLabel) {
        self.rightNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.leftNameLabel.frame.origin.x, self.leftNameLabel.frame.origin.y, self.leftNameLabel.frame.size.width, self.leftNameLabel.frame.size.height)];
        self.rightNameLabel.textColor = [UIColor blackColor];
        self.rightNameLabel.font = [UIFont systemFontOfSize:15];
//        self.rightNameLabel.backgroundColor = [UIColor redColor];
        self.rightNameLabel.text = @"索隆";
    }
    return _rightNameLabel;
}
-(UILabel *)rightDocInfo{
    if (!_rightDocInfo) {
        self.rightDocInfo = [[UILabel alloc] initWithFrame:CGRectMake(self.leftDocInfo.frame.origin.x, self.leftDocInfo.frame.origin.y, self.leftDocInfo.frame.size.width, self.leftDocInfo.frame.size.height)];
        self.rightDocInfo.textColor = [UIColor grayColor];
        self.rightDocInfo.font = [UIFont systemFontOfSize:15];
        self.rightDocInfo.text = @"副船长";
//        self.rightDocInfo.backgroundColor = [UIColor cyanColor];
    }
    return _rightDocInfo;
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
