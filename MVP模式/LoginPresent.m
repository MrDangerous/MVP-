//
//  LoginPresent.m
//  MVP模式
//
//  Created by XWQ on 17/1/23.
//  Copyright © 2017年 Dangerous. All rights reserved.
//

#import "LoginPresent.h"
#import "LoginModel.h"

@interface LoginPresent()

@property (nonatomic,strong)LoginModel *loginModel;

@end

@implementation LoginPresent


-(instancetype)init{
    self = [super init];
    if (self) {
        _loginModel = [[LoginModel alloc]init];
    }
    return self;
}

-(void)login:(NSString *)name andPwd:(NSString *)pwd
{
    [_loginModel login:name andPwd:pwd callBack:^(id response,NSError *error) {
        if (self.delegate)
        {
            [self.delegate loginResult:response];
        }
    }];
}

@end
