//
//  ViewController.m
//  MVP模式
//
//  Created by XWQ on 17/1/23.
//  Copyright © 2017年 Dangerous. All rights reserved.
//

#import "ViewController.h"
#import "LoginPresent.h"
@interface ViewController ()<LoginDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LoginPresent *loginPresent = [[LoginPresent alloc]init];
    loginPresent.delegate = self;
    [loginPresent login:@"" andPwd:@""];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)loginResult:(NSDictionary *)result{
    if (result) {
        NSLog(@"%@",result);
    }
}

@end
