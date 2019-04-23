//
//  TableViewController.h
//  SceneKitRoationDemo
//
//  Created by tianpengfei on 16/5/6.
//  Copyright © 2016年 tianpengfei. All rights reserved.
//

#import <UIKit/UIKit.h>
//根VC
@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
