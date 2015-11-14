//
//  ViewController.m
//  QRCode
//
//  Created by Fan on 15/5/7.
//  Copyright (c) 2015年 未名空间. All rights reserved.
//

#import "ViewController.h"
#import "FanQRCodeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)buttonClick:(UIButton *)btn{
    FanQRCodeViewController *qrCoreVC=[[FanQRCodeViewController alloc]initWithBlock:^(NSString *resultSrt, BOOL isSuccess) {
        if (isSuccess) {
            self.showLabel.text=resultSrt;
            NSLog(@"%@",resultSrt);
        }else{
            NSLog(@"关闭或失败");
        }
        
    }];
    [self presentViewController:qrCoreVC animated:YES completion:nil];

}
-(void)configUI{
    self.showLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 50, self.view.bounds.size.width-40, 50)];
    self.showLabel.numberOfLines=0;
    self.showLabel.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.showLabel];
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake(20, 300, self.view.bounds.size.width-40, 30);
    [self.button setTitle:@"扫描二维码" forState:UIControlStateNormal];
    //    [self.button setTitle:@"停止" forState:UIControlStateSelected];
    [self.button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
