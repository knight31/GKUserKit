//
//  GKChangePasswordController.m
//  GKUserKitExample
//
//  Created by MASGG on 15-3-6.
//  Copyright (c) 2015年 GKCommerce. All rights reserved.
//

#import "GKChangePasswordController.h"
#import "GKRegistrationTableViewCell.h"
@interface GKChangePasswordController ()

@end

@implementation GKChangePasswordController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *identifier = @"GKRegistrationTableViewCell";
    GKRegistrationTableViewCell *cell;
    switch (indexPath.row) {
        case 0:{
            cell = (GKRegistrationTableViewCell *)[tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
            cell.textLabel.text=@"设置密码";
            cell.textField.placeholder=@"请设置新密码";
   
            break;
        }
        case 1:{
            cell = (GKRegistrationTableViewCell *)[tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
            cell.textLabel.text=@"确认密码";
            cell.textField.placeholder=@"请确认密码";
            break;
        }
        default:
            break;
    }
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45.0f;
}
@end
