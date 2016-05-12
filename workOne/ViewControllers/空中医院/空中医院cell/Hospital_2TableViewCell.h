//
//  Hospital_2TableViewCell.h
//  
//
//  Created by lishu tech on 16/5/10.
//
//

#import <UIKit/UIKit.h>

@interface Hospital_2TableViewCell : UITableViewCell

@property (nonatomic,strong)UILabel *greenLine;
@property (nonatomic,strong)UILabel *strLabel;//名医讲堂
@property (nonatomic,strong)UIButton *headerBtn;

@property (nonatomic,strong)UILabel *lineX1; //几条线
@property (nonatomic,strong)UILabel *lineX2;
@property (nonatomic,strong)UILabel *lineY;

@property (nonatomic,strong)UIImageView *doctorImgView;//医师照片
@property (nonatomic,strong)UILabel *titleLabel;  //新闻标题
@property (nonatomic,strong)UILabel *doctorInfo;//医生信息
@property (nonatomic,strong)UIButton *midBtn;

@property (nonatomic,strong)UIButton *leftBtn;   //左边的button
@property (nonatomic,strong)UILabel *titleLabel_1;
@property (nonatomic,strong)UIImageView *leftIconImgView;
@property (nonatomic,strong)UILabel *leftNameLabel;
@property (nonatomic,strong)UILabel *leftDocInfo;

@property (nonatomic,strong)UIButton *rightBtn;  //右边的button
@property (nonatomic,strong)UILabel *titleLabel_2;
@property (nonatomic,strong)UIImageView *rightIconImgView;
@property (nonatomic,strong)UILabel *rightNameLabel;
@property (nonatomic,strong)UILabel *rightDocInfo;

//20*kHeightScale+20+70*kHeightScale+10+

@end
