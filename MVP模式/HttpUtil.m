//
//  HttpUtil.m
//  MVP模式
//
//  Created by XWQ on 17/1/23.
//  Copyright © 2017年 Dangerous. All rights reserved.
//

#import "HttpUtil.h"

@implementation HttpUtil

+(void)post:(NSString *)name pwd:(NSString *)pwd callback:(Callback)callback
{
    NSURL *URL = [NSURL URLWithString:@""];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:URL];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"zh-cn" forHTTPHeaderField:@"LOCALE"];
    request.HTTPMethod = @"POST";
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    [dict setObject:@"2" forKey:@"showType"];
    NSString *jsonString = [NSString stringWithFormat:@"%@",[self dictionaryToJson:dict]];
    request.HTTPBody =[jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error)
    {
        if (error == nil)
        {
            NSError *error1;
            NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error1];
            callback(dic,error1);
        }
        else
        {
            callback(nil,error);
        }
        
    }];
    [task resume];
    
}

+(NSString *)dictionaryToJson:(NSDictionary *)dic

{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}



@end
