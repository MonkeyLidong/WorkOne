//
//  Hospital_1TableViewCell.m
//  workOne
//
//  Created by lishu tech on 16/5/10.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "Hospital_1TableViewCell.h"
#import "PrefixHeader.pch"
@implementation Hospital_1TableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self addSubview:self.lineX];
        [self addSubview:self.lineY];
        [self addSubview:self.askBtn];
        [self addSubview:self.registerBtn];
        [self addSubview:self.personalBtn];
        [self addSubview:self.payBtn];
    }
    return self;
}
-(UILabel *)lineX{
    if (!_lineX) {
        self.lineX = [[UILabel alloc] initWithFrame:CGRectMake(0, (kHeight/4)/2-0.5, kWidth, 1)];
        self.lineX.backgroundColor = [UIColor grayColor];
    }
    return _lineX;
}
-(UILabel *)lineY{
    if (!_lineY) {
        self.lineY = [[UILabel alloc] initWithFrame:CGRectMake(kWidth/2-0.5, 0, 1*kWidthScale, kHeight/4)];
        self.lineY.backgroundColor = [UIColor grayColor];
    }
    return _lineY;
}
-(UIButton *)askBtn{
    if (!_askBtn) {
        self.askBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        self.askBtn.frame = CGRectMake(0, 0, self.lineY.frame.origin.x, self.lineX.frame.origin.y);
        self.askBtn.backgroundColor = [UIColor cyanColor];
        [self.askBtn setTitle:@"立刻咨询" forState:UIControlStateNormal];
        self.askBtn.titleLabel.font = [UIFont systemFontOfSize:20];
        self.askBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.askBtn addTarget:self action:@selector(askBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _askBtn;
}
-(void)askBtnAction{
    NSLog(@"立刻咨询");
    
}
-(UIButton *)registerBtn{
    if (!_registerBtn) {
        self.registerBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        self.registerBtn.frame = CGRectMake(self.askBtn.frame.size.width+1*kWidthScale, 0, kWidth - self.askBtn.frame.size.width - 1*kWidthScale, self.lineX.frame.origin.y);
        self.registerBtn.backgroundColor = [UIColor orangeColor];
        [self.registerBtn setTitle:@"预约挂号" forState:UIControlStateNormal];
        self.registerBtn.titleLabel.font = [UIFont systemFontOfSize:20];
        self.registerBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.registerBtn addTarget:self action:@selector(registerBtnAction) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _registerBtn;
}
-(void)registerBtnAction{
    NSLog(@"预约挂号");
}
-(UIButton *)personalBtn{
    if (!_personalBtn) {
        self.personalBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        self.personalBtn.frame = CGRectMake(0, self.askBtn.frame.size.height+1, self.askBtn.frame.size.width, self.askBtn.frame.size.height);
        self.personalBtn.backgroundColor = [UIColor greenColor];
        [self.personalBtn setTitle:@"私人医生" forState:UIControlStateNormal];
        self.personalBtn.titleLabel.font = [UIFont systemFontOfSize:20];
        self.personalBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.personalBtn addTarget:self action:@selector(personalBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _personalBtn;
}
-(void)personalBtnAction{
    NSLog(@"私人医生");
}
-(UIButton *)payBtn{
    if (!_payBtn) {
        self.payBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        self.payBtn.frame = CGRectMake(self.registerBtn.frame.origin.x, self.personalBtn.frame.origin.y, self.registerBtn.frame.size.width, self.personalBtn.frame.size.height);
        self.payBtn.backgroundColor = [UIColor magentaColor];
        self.payBtn.titleLabel.font = [UIFont systemFontOfSize:20];
        [self.payBtn setTitle:@"快速支付" forState:UIControlStateNormal];
        self.payBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.payBtn addTarget:self action:@selector(payBtnAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _payBtn;
}
-(void)payBtnAction{
    NSLog(@"快速支付");
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
