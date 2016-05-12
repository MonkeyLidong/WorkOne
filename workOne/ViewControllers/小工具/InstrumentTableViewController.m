//
//  InstrumentTableViewController.m
//  workOne
//
//  Created by lishu tech on 16/5/2.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "InstrumentTableViewController.h"
#import "InstrumentTableViewCell.h"
#import "PrefixHeader.pch"
@interface InstrumentTableViewController ()

@property (nonatomic,copy)NSMutableArray *titleArray;

@end

@implementation InstrumentTableViewController
 NSString *instCell = @"inCell";
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.showsVerticalScrollIndicator = NO;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"InstrumentTableViewCell" bundle:nil]forCellReuseIdentifier:@"instrumentCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark ----懒加载
-(NSMutableArray *)titleArray{
    
    if (!_titleArray) {
        
        self.titleArray = [NSMutableArray arrayWithObjects:@"孕期计算器",@"胎儿发育评测",@"胎儿体重计算器",@"安全期计算器",@"孕妇体重增长表",@"体重指数计算器",@"排卵期计算器",@"预产期计算器", nil];
    }
    return _titleArray;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 8;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return kHeight/10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    InstrumentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"instrumentCell" forIndexPath:indexPath];
    if (cell) {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.instLabel.text = self.titleArray[indexPath.row];
        cell.imgView.image = [UIImage imageNamed:@"11"];
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
