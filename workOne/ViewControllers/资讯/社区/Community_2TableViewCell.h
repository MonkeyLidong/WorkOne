//
//  Community_2TableViewCell.h
//  workOne
//
//  Created by lishu tech on 16/5/7.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Community_2TableViewCell : UITableViewCell

@property (nonatomic,assign)NSInteger imgCount;//接收图片个数
@property (nonatomic,strong)NSMutableArray *imgArray;//存储图片的数组

@property (nonatomic,strong)UILabel *titleLab;//标题
@property (nonatomic,strong)UILabel *contentLab;//内容
@property (nonatomic,strong)UIImageView *contentImg;//内容图片
@property (nonatomic,strong)UILabel *typeAndTimeLab;//话题类别和发布时间
@property (nonatomic,strong)UILabel *lineLab;//横线

@property (nonatomic,strong)UIImageView *iconImgView;//用户头像
@property (nonatomic,strong)UILabel *nameLab;//用户名

@property (nonatomic,strong)UIButton *tapButton;//点赞按钮
@property (nonatomic,strong)UILabel *tapCountLab;//点赞次数

@property (nonatomic,strong)UIButton *messageButton;//留言按钮
@property (nonatomic,strong)UILabel *messageCountLab;//留言次数


@end
