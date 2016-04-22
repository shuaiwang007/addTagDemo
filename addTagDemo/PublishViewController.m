//
//  PublishViewController.m
//  addTagDemo
//
//  Created by Mr.Wang on 16/4/22.
//  Copyright © 2016年 Mr.wang. All rights reserved.
//

#import "PublishViewController.h"
#import "ViewController.h"

@interface PublishViewController ()
@property(nonatomic, copy) UIButton *publishBtn;

@end

@implementation PublishViewController

- (UIButton *)publishBtn {
    if (!_publishBtn) {
        _publishBtn = [[UIButton alloc] init];
        [_publishBtn setBackgroundColor:[UIColor redColor]];
        [_publishBtn setTitle:@"发表有标签的状态" forState:UIControlStateNormal];
        [_publishBtn addTarget:self action:@selector(publishBtnOnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _publishBtn;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.publishBtn];
}

- (void)viewDidLayoutSubviews {
    self.publishBtn.frame = CGRectMake(100, 100, 80, 30);
    [self.publishBtn sizeToFit];
    [super viewDidLayoutSubviews];
}

- (void)publishBtnOnClick {
    ViewController *vc = [[ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
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

@end
