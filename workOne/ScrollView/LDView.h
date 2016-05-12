//
//  LDView.h
//  workOne
//
//  Created by lishu tech on 16/5/11.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LDView : UIView

/**
 *自定义轮播图的接口,三个参数分别是轮播图的frame，需要展示图片的数组，定时器的时间间隔
 */
-(instancetype)initWithFrame:(CGRect)frame withImgArray:(NSMutableArray *)array withTimeInterval:(NSTimeInterval)interval;


@end
