//
//  LoginPresent.h
//  MVP模式
//
//  Created by XWQ on 17/1/23.
//  Copyright © 2017年 Dangerous. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginDelegate <NSObject>

-(void)loginResult:(NSDictionary *)result;

@end

@interface LoginPresent : NSObject
@property (nonatomic,weak) __weak id<LoginDelegate>delegate;

-(void)login:(NSString *)name andPwd:(NSString *)pwd;

@end
