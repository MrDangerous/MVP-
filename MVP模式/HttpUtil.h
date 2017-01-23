//
//  HttpUtil.h
//  MVP模式
//
//  Created by XWQ on 17/1/23.
//  Copyright © 2017年 Dangerous. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^Callback) (id response ,NSError *error);

@interface HttpUtil : NSObject


+(void)post:(NSString *)name pwd:(NSString *)pwd callback:(Callback)callback;


@end
