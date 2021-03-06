//
//  WillPreTableViewController.m
//  workOne
//
//  Created by lishu tech on 16/5/2.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "WillPreTableViewController.h"
#import "Masonry.h"
#define kWidth self.view.bounds.size.width
@interface WillPreTableViewController ()

@property (nonatomic,strong)UIImageView *headerView1;
@property (nonatomic,strong)UIImageView *headerView2;
@property (nonatomic,strong)UIScrollView *myScrollView;

@end

@implementation WillPreTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
  
    
    
}
#pragma mark -----给myScrollView设置相关属性
- (void)setMyScrollView{
  
    [self.myScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.size.mas_equalTo(CGSizeMake(kWidth, kWidth/2));
        make.top.mas_equalTo(0);
        
    }];
  
    self.myScrollView.contentSize = CGSizeMake(kWidth, kWidth/2);
    self.myScrollView.pagingEnabled = YES;
}
#pragma mark -----懒加载
-(UIScrollView *)myScrollView{
    
    if (!_myScrollView) {
        self.myScrollView = [[UIScrollView alloc] init];
    }
    
    return _myScrollView;
}
-(UIImageView *)headerView1{
    if (!_headerView1) {
        self.headerView1 = [[UIImageView alloc] init];
    }
    return _headerView1;
}
-(UIImageView *)headerView2{
    if (!_headerView2) {
        self.headerView2 = [[UIImageView alloc] init];
    }
    return _headerView2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
