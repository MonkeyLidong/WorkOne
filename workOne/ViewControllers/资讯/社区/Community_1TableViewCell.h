//
//  Community_1TableViewCell.h
//  workOne
//
//  Created by lishu tech on 16/5/7.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Community_1TableViewCell : UITableViewCell

@property (nonatomic,strong)UILabel *titleLab; //热门社区
//@property (nonatomic,strong)UIButton *arrowBtn;//Cell上的带有箭头图标的button
@property (nonatomic,strong)UILabel *lineLab;//横线
@property (nonatomic,strong)UIImageView *arrowImgview;
@property (nonatomic,strong)NSMutableArray *titleArray;
@property (nonatomic,strong)UIImageView *imgView;

@end
