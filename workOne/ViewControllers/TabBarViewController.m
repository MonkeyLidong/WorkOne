//
//  TabBarViewController.m
//  workOne
//
//  Created by lishu tech on 16/5/2.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "TabBarViewController.h"
#import "HospitalTableViewController.h"
#import "WillPreTableViewController.h"
#import "PregnantTableViewController.h"
#import "BabyTableViewController.h"
#import "InstrumentTableViewController.h"
#import "UserInfoTableViewController.h"
#import "RootViewController.h"
@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //资讯
    RootViewController *infoVC = [[RootViewController alloc] init];
    infoVC.title = @"资讯";
    self.tabBar.tintColor = [UIColor greenColor];
    infoVC.tabBarItem.image = [[UIImage imageNamed:@"1"]imageWithRenderingMode:UIImageRenderingModeAutomatic];
    UINavigationController *infoNC = [[UINavigationController alloc] initWithRootViewController:infoVC];
    //空中医院
    HospitalTableViewController *HosVC = [[HospitalTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    HosVC.title = @"空中医院";
    HosVC.tabBarItem.image = [[UIImage imageNamed:@"2"]imageWithRenderingMode:UIImageRenderingModeAutomatic];
    UINavigationController *HosNC = [[UINavigationController alloc] initWithRootViewController:HosVC];
    
    /*首页*/
    //备孕
    WillPreTableViewController *WillVC = [[WillPreTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    WillVC.title = @"首页";
    WillVC.tabBarItem.image = [[UIImage imageNamed:@"3"]imageWithRenderingMode:UIImageRenderingModeAutomatic];
    UINavigationController *WillNC = [[UINavigationController alloc] initWithRootViewController:WillVC];
//    //怀孕
//    PregnantTableViewController *PreVC = [[PregnantTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
//    PreVC.title = @"首页";
//    UINavigationController *PreNC = [[UINavigationController alloc] initWithRootViewController:PreVC];
//    //育儿
//    BabyTableViewController *BabyVC = [[BabyTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
//    BabyVC.title = @"首页";
//    UINavigationController *BabyNC = [[UINavigationController alloc] initWithRootViewController:BabyVC];
    
    
    //工具
    InstrumentTableViewController *InstVC = [[InstrumentTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    InstVC.title = @"小工具";
    InstVC.tabBarItem.image = [[UIImage imageNamed:@"4"] imageWithRenderingMode:UIImageRenderingModeAutomatic];
    UINavigationController *InstNC = [[UINavigationController alloc] initWithRootViewController:InstVC];
    //个人中心
    UserInfoTableViewController *userVC = [[UserInfoTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    userVC.title = @"个人中心";
    userVC.tabBarItem.image = [[UIImage imageNamed:@"5"] imageWithRenderingMode:UIImageRenderingModeAutomatic];
    UINavigationController *userNC = [[UINavigationController alloc] initWithRootViewController:userVC];
    
    //添加控制器
    self.viewControllers = @[infoNC,HosNC,WillNC,InstNC,userNC];
    self.tabBar.hidden = NO;
    self.selectedIndex = 2;
   
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
