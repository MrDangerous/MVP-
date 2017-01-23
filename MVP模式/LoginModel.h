//
//  LoginModel.h
//  MVP模式
//
//  Created by XWQ on 17/1/23.
//  Copyright © 2017年 Dangerous. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpUtil.h"
@interface LoginModel : NSObject

-(void)login:(NSString *)name andPwd:(NSString *)pwd callBack:(Callback)callback;

@end
