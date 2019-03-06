//
//  CYLDetailsViewController.m
//  CYLTabBarController
//
//  v1.16.0 Created by 微博@iOS程序犭袁 ( http://weibo.com/luohanchenyilong/ ) on 10/20/15.
//  Copyright © 2018 https://github.com/ChenYilong . All rights reserved.
//

#import "CYLDetailsViewController.h"
#import "CYLTabBarController.h"
#import "CYLMineViewController.h"
#import "CYLSameCityViewController.h"
#import "CYLHomeViewController.h"
@interface CYLDetailsViewController ()

@end

@implementation CYLDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"详情页";
    self.view.backgroundColor = [UIColor orangeColor];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"点击屏幕可跳转到“我的”，执行testPush";
    label.frame = CGRectMake(20, 150, CGRectGetWidth(self.view.frame) - 2 * 20, 20);
    label.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self cyl_popSelectTabBarChildViewControllerAtIndex:3 completion:^(__kindof UIViewController *selectedTabBarChildViewController) {
        CYLMineViewController *mineViewController = selectedTabBarChildViewController;
        @try {
            [mineViewController testPush];
        } @catch (NSException *exception) {
            NSLog(@"🔴类名与方法名：%@（在第%@行），描述：%@", @(__PRETTY_FUNCTION__), @(__LINE__), exception.reason);
        }
    }];
}

@end
