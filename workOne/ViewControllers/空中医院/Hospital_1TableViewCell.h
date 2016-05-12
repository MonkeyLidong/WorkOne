//
//  Hospital_1TableViewCell.h
//  workOne
//
//  Created by lishu tech on 16/5/10.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Hospital_1TableViewCell : UITableViewCell

@property (nonatomic,strong)UIButton *askBtn;//立刻咨询
@property (nonatomic,strong)UIButton *registerBtn; //预约挂号
@property (nonatomic,strong)UIButton *personalBtn; //私人医生
@property (nonatomic,strong)UIButton *payBtn;//快速支付

@property (nonatomic,strong)UILabel *lineX;//横线
@property (nonatomic,strong)UILabel *lineY;//竖线



@end
