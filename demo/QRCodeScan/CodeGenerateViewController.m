//
//  CodeGenerateViewController.m
//  QRCodeScan
//
//  Created by 李雪阳 on 2018/9/3.
//  Copyright © 2018年 singularity. All rights reserved.
//

#import "CodeGenerateViewController.h"
#import "QRCodeGenerateTools.h"
#import <Masonry.h>

@interface CodeGenerateViewController ()
@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation CodeGenerateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    
    UITextField *textField = [[UITextField alloc] init];
    [self.view addSubview:textField];
    
    [textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 40));
        make.top.mas_equalTo(100);
        make.centerX.mas_equalTo(self.view.mas_centerX);
    }];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    
    textField.placeholder = @"请输入要生成二维码的信息";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"生成" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(generate:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(textField.mas_bottom).offset(10);
        make.centerX.mas_equalTo(self.view.mas_centerX);
    }];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    [self.view addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 150));
        make.top.mas_equalTo(button.mas_bottom).offset(20);
        make.centerX.mas_equalTo(self.view.mas_centerX);
    }];
    
    self.textField = textField;
    self.imageView = imageView;
    
//    [self setDefaultQRCode];
//    [self setLogoQRCode];
//    [self setColorQRCode];
}

- (void)generate:(UIButton *)button {
    [self.textField resignFirstResponder];
   UIImage *image = [QRCodeGenerateTools generateWithDefaultQRCodeData:self.textField.text imageViewWidth:100];
    self.imageView.image = image;
}


- (void)setDefaultQRCode{
    UIImageView *code=[[UIImageView alloc]initWithFrame:CGRectMake(10, 90, 100, 100)];
    code.image=[QRCodeGenerateTools generateWithDefaultQRCodeData:@"https://github.com/XueYangLee/QRCodeScan" imageViewWidth:100];
    [self.view addSubview:code];
}

- (void)setLogoQRCode{
    UIImageView *code=[[UIImageView alloc]initWithFrame:CGRectMake(10, 200, 100, 100)];
    code.image=[QRCodeGenerateTools generateWithLogoQRCodeData:@"https://github.com/XueYangLee/QRCodeScan" logoImageName:@"scan_photo" logoScaleToSuperView:0.2];
    [self.view addSubview:code];
}

- (void)setColorQRCode{
    UIImageView *code=[[UIImageView alloc]initWithFrame:CGRectMake(10, 310, 100, 100)];
    code.image=[QRCodeGenerateTools generateWithColorQRCodeData:@"https://github.com/XueYangLee/QRCodeScan" backgroundColor:[CIColor blueColor] mainColor:[CIColor yellowColor]];
    [self.view addSubview:code];
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
