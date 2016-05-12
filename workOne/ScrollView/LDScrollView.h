//
//  HeaderScrollView.h
//  workOne
//
//  Created by lishu tech on 16/5/4.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LDScrollView : UIScrollView

/**
 *自定义轮播图的接口
 */
-(instancetype)initWithFrame:(CGRect)frame withImgArray:(NSMutableArray *)array;
@end
