//
//  LoginModel.m
//  MVP模式
//
//  Created by XWQ on 17/1/23.
//  Copyright © 2017年 Dangerous. All rights reserved.
//

#import "LoginModel.h"

@implementation LoginModel

-(void)login:(NSString *)name andPwd:(NSString *)pwd callBack:(Callback)callback{
    [HttpUtil post:name pwd:pwd callback:^(NSDictionary *result ,NSError *error) {
        //json解析
        if (!error) {
            callback(result,nil);
        }
        else{
            callback(nil,error);
        }
    }];
}

@end
