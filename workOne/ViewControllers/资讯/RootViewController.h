//
//  RootViewController.h
//  workOne
//
//  Created by lishu tech on 16/5/4.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RootTableDelegate <NSObject>


-(void)addControllers:(NSMutableArray *)array;

@end

@interface RootViewController : UIViewController



@end
