//
//  UserInfoTableViewController.m
//  workOne
//
//  Created by lishu tech on 16/5/2.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "UserInfoTableViewController.h"
#import "PrefixHeader.pch"
#import "UserInfoTableViewCell.h"
@interface UserInfoTableViewController ()

@property (nonatomic,strong)UIView *headerView;
@property(nonatomic,copy)NSMutableArray *titleArray;
@property (nonatomic,strong)UIImageView *iconView;//用户头像
@property(nonatomic,strong)UILabel *phoneLable;//用户名或者用户电话
@property(nonatomic,strong)UILabel *moneyLabel;//账户余额
@end

@implementation UserInfoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor grayColor];
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.tableHeaderView = self.headerView;
    [self.tableView registerNib:[UINib nibWithNibName:@"UserInfoTableViewCell" bundle:nil] forCellReuseIdentifier:@"userInfoCell"];
}

#pragma mark ---懒加载
//头视图以及头视图上的相关控件
-(UIView *)headerView{
    
    if (!_headerView) {
        self.headerView = [[UIView alloc] init];
        self.headerView.frame = CGRectMake(0, 0, kWidth, 130*kHeightScale);
        self.headerView.backgroundColor = [UIColor greenColor];
        [self.tableView addSubview:self.headerView];
        
        UIImageView *userImgView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 20, kWidth/2, 40*kHeightScale)];
//        userImgView.backgroundColor = [UIColor whiteColor];
        userImgView.contentMode = UIViewContentModeScaleAspectFill;
        //用户头像
        _iconView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40*kHeightScale, 40*kHeightScale)];
        _iconView.image = [UIImage imageNamed:@"22"];
        _iconView.layer.cornerRadius = (40*kHeightScale )/2;
        _iconView.layer.masksToBounds = YES;
        
        //用户名
        _phoneLable = [[UILabel alloc] initWithFrame:CGRectMake(10+40*kHeightScale, 15, kWidth/2-(40*kHeightScale)-10, 40*kHeightScale-30)];
        _phoneLable.text = @"用户名";
        
        [userImgView addSubview:_phoneLable];
        [userImgView addSubview:_iconView];
        
        //给userImgView添加点击事件
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
        [userImgView addGestureRecognizer:tap];
        [self.headerView addSubview:userImgView];
        
        //账户余额
        _moneyLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 20+40*kHeightScale+20, 80*kWidthScale, 25*kHeightScale)];
//        _moneyLabel.backgroundColor = [UIColor whiteColor];
        _moneyLabel.text = @"0.00";
        _moneyLabel.textAlignment = NSTextAlignmentCenter;
        
        UILabel *monLable = [[UILabel alloc] initWithFrame:CGRectMake(10, 20+40*kHeightScale+20+25*kHeightScale, 80*kWidthScale, 25*kHeightScale)];
        monLable.textAlignment = NSTextAlignmentCenter;
        monLable.text = @"账户余额(元)";
        monLable.font = [UIFont systemFontOfSize:12];
        
        
        [self.headerView addSubview:monLable];
        [self.headerView addSubview:_moneyLabel];
    }
    return _headerView;
}
-(NSMutableArray *)titleArray{
    if (!_titleArray) {
        
        self.titleArray = [NSMutableArray arrayWithObjects:@"金币商城",@"金币任务",@"健康归档",@"开通会员",@"购药订单",@"新闻收藏",@"我的社区",@"邀请好友",@"设置与帮助",@"意见反馈", nil];
    }
    
    return _titleArray;
}

#pragma mark ---点击事件
- (void)tapAction{
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    if (section == 2) {
        return 4;
    }else{
        return 2;
    }
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 30*(kWidth/320)+20;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UserInfoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"userInfoCell" forIndexPath:indexPath];
    if (cell) {
        
        if (indexPath.section == 0) {
            cell.titleLable.text = self.titleArray[indexPath.row];
        }else if (indexPath.section == 1){
            cell.titleLable.text = self.titleArray[indexPath.row + 2];
        }else if (indexPath.section == 2){
            cell.titleLable.text = self.titleArray[indexPath.row + 4];
        }else{
            cell.titleLable.text = self.titleArray[indexPath.row + 8];
        }
        cell.imgView.image = [UIImage imageNamed:@"22"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    return cell;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
