//
//  ViewController.m
//  二维码
//
//  Created by apple on 14/12/30.
//  Copyright (c) 2014年 yixin. All rights reserved.
//

#import "ViewController.h"
#import "ZCZBarViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [button setTitle:@"扫描二维码" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    button.backgroundColor = [UIColor greenColor];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)buttonClick
{
    ZCZBarViewController * vc = [[ZCZBarViewController alloc]initWithBlock:^(NSString * str, BOOL isSucceed) {
        if (isSucceed) {
            NSLog(@"扫描完成");
        }
    }];
    [self presentViewController:vc animated:YES completion:nil];
    
    vc = nil;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
