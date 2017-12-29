//
//  ViewController.m
//  HuanxinKefu
//
//  Created by 刘庆贺 on 2017/12/27.
//  Copyright © 2017年 huiranwangluo. All rights reserved.
//

#import "ViewController.h"
#import "HDChatViewController.h"
#import "SCLoginManager.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.backgroundColor = [UIColor blueColor];
}

//注册按钮Action
- (IBAction)regAction:(id)sender {
    [self regHuanXin];
}
//注册方法,目前为方便起见我们放在iOS端注册,实际运用中要放在后台进行注册
- (void)regHuanXin{
    HError *error = [[HChatClient sharedClient] registerWithUsername:self.username.text password:self.password.text];
    
    if (!error) {
        [SVProgressHUD showSuccessWithStatus:@"注册成功"];
        
    }else{
        NSString *errorReason = [NSString stringWithFormat:@"注册失败:%@",error.errorDescription];
        [SVProgressHUD showErrorWithStatus:errorReason];
    }
}

//登录按钮Action
- (IBAction)loginAction:(id)sender {
    [self loginHuanXin];
}

//登录方法
- (void)loginHuanXin{
    HChatClient *client = [HChatClient sharedClient];
    if (client.isLoggedInBefore != YES) {
        HError *error = [client loginWithUsername:self.username.text password:self.password.text];
        if (!error) {
            NSLog(@"登录成功");
            [self joinChat];
        } else {
            NSString *errorReason = [NSString stringWithFormat:@"登录失败:%@",error.errorDescription];
            [SVProgressHUD showErrorWithStatus:errorReason];
            NSLog(@"登录失败");
        }
    }else{
        [self joinChat];
    }
}

- (void)joinChat{
    SCLoginManager *sc = [SCLoginManager shareLoginManager];
    HDChatViewController *chatVC = [[HDChatViewController alloc] initWithConversationChatter:sc.cname]; // 获取地址：kefu.easemob.com，“管理员模式 > 渠道管理 > 手机APP”页面的关联的“IM服务号”
    [self.navigationController pushViewController:chatVC animated:YES];
}
//退出登录
//如果要更换账号登录,一定要退出登录后再登录
- (IBAction)loginOutAction:(id)sender {
    HError *error = [[HChatClient sharedClient] logout:YES];
    if (error) { //登出出错
        NSLog(@"退出登录出错");
    } else {//登出成功
        NSLog(@"退出登录成功");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
