//
//  LDView.m
//  workOne
//
//  Created by lishu tech on 16/5/11.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "LDView.h"
#import "LDScrollView.h"
#import "PrefixHeader.pch"
@interface LDView()<UIScrollViewDelegate>

@property (nonatomic,strong)LDScrollView *myScrollView;
@property (nonatomic,strong)UIPageControl *pageControl;
@property (nonatomic,strong)NSTimer *timer;  //图片自动轮播的定时器
@property (nonatomic,strong)NSMutableArray *imgArray;
@property (nonatomic,assign)NSTimeInterval interval;

@end
@implementation LDView


-(instancetype)initWithFrame:(CGRect)frame withImgArray:(NSMutableArray *)array withTimeInterval:(NSTimeInterval)interval{
    if (self = [super initWithFrame:frame]){
        
         self.myScrollView = [[LDScrollView alloc] initWithFrame:frame withImgArray:array];
         self.myScrollView.delegate = self;
         self.imgArray = [NSMutableArray arrayWithArray:array];
        [self addSubview:self.myScrollView];
        
        CGFloat width = self.myScrollView.frame.size.width;
        CGFloat height = self.myScrollView.frame.size.height;
        self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(width - 100, height - 40, 60*kWidthScale, 30)];
        self.pageControl.numberOfPages = array.count;
        self.pageControl.currentPage = 0;
        [self addSubview:self.pageControl];
        
        self.interval = interval;
        [self addTimer:interval];
    }
    return self;
}
-(void)addTimer:(NSTimeInterval)durtion{
  
    self.timer = [NSTimer scheduledTimerWithTimeInterval:durtion  target:self selector:@selector(nextPage) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

-(void)nextPage{
    
    NSInteger page = self.pageControl.currentPage;
    if (page == self.imgArray.count - 1) {
        page = 0;
    }else{
        page++;
    }
    CGFloat x = page * self.myScrollView.frame.size.width;
    self.myScrollView.contentOffset = CGPointMake(x, 0);
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    self.pageControl.currentPage = self.myScrollView.contentOffset.x / self.myScrollView.frame.size.width;
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat x = self.myScrollView.contentOffset.x;
    CGFloat width = self.myScrollView.frame.size.width;
    NSInteger page = (x + width / 2)/width;
    self.pageControl.currentPage = page;
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.timer invalidate];
     self.timer = nil;
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    [self addTimer:self.interval];
}



@end
