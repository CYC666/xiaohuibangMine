//
//  AccountSettingViewController.h
//  XiaoHuiBang
//
//  Created by 消汇邦 on 16/9/30.
//  Copyright © 2016年 消汇邦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccountSettingViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, retain) NSString *phoneStr;

- (id)initWithUserPhone:(NSString *)phone;

@end
