//
//  CommunityTableViewController.m
//  workOne
//
//  Created by lishu tech on 16/5/4.
//  Copyright © 2016年 MR.Black. All rights reserved.
//

#import "CommunityTableViewController.h"
#import "Community_1TableViewCell.h"
#import "Community_2TableViewCell.h"
#import "Community_3TableViewCell.h"
#import "PrefixHeader.pch"
@interface CommunityTableViewController ()

@end

@implementation CommunityTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor greenColor];
    [self.tableView registerClass:[Community_1TableViewCell class] forCellReuseIdentifier:COMMUNITY_CELL_1];
    [self.tableView registerClass:[Community_2TableViewCell class] forCellReuseIdentifier:COMMUNITY_CELL_2];
    [self.tableView registerClass:[Community_3TableViewCell class] forCellReuseIdentifier:COMMUNITY_CELL_3];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }else{
       return 5; 
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 1) {
        return 20*kHeightScale;
    }else{
        return 10;
    }
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 1) {
        return @"热门话题";
    }
    return nil;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
         return 71+60*kHeightScale;
    }else if (indexPath.section == 1){
        return 105*kHeightScale+61+10;
    }
    else{
        return 75*kHeightScale+61+(kWidth-60)/3+10;
    }
   
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
         Community_1TableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:COMMUNITY_CELL_1 forIndexPath:indexPath];
        
        return cell1;
    }else if(indexPath.section == 1){
     
        Community_3TableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:COMMUNITY_CELL_3 forIndexPath:indexPath];
        
        return cell3;
    }else{
        Community_2TableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:COMMUNITY_CELL_2 forIndexPath:indexPath];
        
        
        return cell2;
    }
    
   
    
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
