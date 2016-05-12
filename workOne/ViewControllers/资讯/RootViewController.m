//
//  RootViewController.m
//  workOne
//
//  Created by lishu tech on 16/5/4.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "RootViewController.h"
#import "SCNavTabBarController.h"
#import "HotNewsTableViewController.h"
#import "CommunityTableViewController.h"
#import "SexTableViewController.h"
#import "ChildTableViewController.h"
#import "WomenTableViewController.h"
#import "ExerciseTableViewController.h"
#import "RumourTableViewController.h"
#import "LivesTableViewController.h"
#import "EmergencyTableViewController.h"
#import "NutritionTableViewController.h"
#import "SicknessTableViewController.h"
#import "EmotionTableViewController.h"
#import "OldTableViewController.h"
#import "PrefixHeader.pch"
@interface RootViewController ()

@property (nonatomic,strong)NSMutableArray *controlArray;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addTabController];
    
}

-(void)addTabController{
    
    HotNewsTableViewController *hotVC = [[HotNewsTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    hotVC.title = @"热点";
    CommunityTableViewController *comVC = [[CommunityTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    comVC.title = @"社区";
    SexTableViewController *sexVC = [[SexTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    sexVC.title = @"两性";
    ChildTableViewController *childVC = [[ChildTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    childVC.title = @"育儿";
    WomenTableViewController *womenVC = [[WomenTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    womenVC.title = @"女性";
    ExerciseTableViewController *exerVC = [[ExerciseTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    exerVC.title = @"健身";
    RumourTableViewController *rumourVC = [[RumourTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    rumourVC.title = @"辟谣";
    LivesTableViewController *liveVC = [[LivesTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    liveVC.title = @"生活";
    EmergencyTableViewController *emerVC = [[EmergencyTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    emerVC.title = @"急救";
    NutritionTableViewController *nurVC = [[NutritionTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    nurVC.title = @"营养";
    SicknessTableViewController *sickVC = [[SicknessTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    sickVC.title = @"慢性病";
    OldTableViewController *oldVC = [[OldTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    oldVC.title = @"老年";
    EmotionTableViewController *emotionVC = [[EmotionTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    emotionVC.title = @"情感";
    
   
    
    
    self.controlArray = [NSMutableArray arrayWithObjects:hotVC,comVC,sexVC,childVC,emotionVC,womenVC,exerVC,rumourVC,liveVC,emerVC,nurVC,oldVC,sickVC, nil];
    [self setController];
    SCNavTabBarController *scnVC = [[SCNavTabBarController alloc] init];
    scnVC.subViewControllers = self.controlArray;
    scnVC.showArrowButton = YES;
    scnVC.navTabBarColor = [UIColor whiteColor];
    scnVC.navTabBarLineColor = [UIColor clearColor];
    scnVC.mainViewBounces = YES;
    [scnVC addParentController:self];
    
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doSomething) name:CHANGE object:nil];
    
 }
-(void)doSomething{
    [self setController];
   
    SCNavTabBarController *scnVC = [[SCNavTabBarController alloc] init];
    scnVC.subViewControllers = self.controlArray;
    scnVC.showArrowButton = YES;
    scnVC.navTabBarColor = [UIColor whiteColor];
    scnVC.navTabBarLineColor = [UIColor clearColor];
    scnVC.mainViewBounces = YES;
    [scnVC addParentController:self];

    
}

-(void)setController{
    
    NSUserDefaults *items = [NSUserDefaults standardUserDefaults];
    NSMutableArray *itemArray = [NSMutableArray arrayWithArray:[items objectForKey:ITEMS]];
    NSLog(@"*********%lu****",(unsigned long)itemArray.count);
    NSMutableArray *array1 = [NSMutableArray arrayWithArray:self.controlArray];
    for (UITableViewController *VC in array1) {

        if (![itemArray containsObject:VC.title]) {

            [self.controlArray removeObject:VC];
             NSLog(@"vc.title = %@",VC.title);
        }
        
    }
    NSLog(@"我收到通知了*/*//*/*/*");
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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
