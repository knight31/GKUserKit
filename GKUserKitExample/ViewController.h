//
//  ViewController.h
//  GKUserKitExample
//
//  Created by 宇 陈 on 15/2/21.
//  Copyright (c) 2015年 GKCommerce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic)  UITableView *tableView;

@end

