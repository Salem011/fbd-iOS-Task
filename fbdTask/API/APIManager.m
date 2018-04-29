//
//  APIManager.m
//  fbdTask
//
//  Created by Salem Mohamed on 4/29/18.
//  Copyright © 2018 Salem Mohammed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIManager.h"
#import "Repository.h"
#import "AFNetworking.h"

@implementation APIManager


+ (void) getRepos {
    
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"https://api.github.com/users/facebook/repos" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        NSArray *reposJson = responseObject ;
        NSArray *repos = [[NSArray alloc] init];
        for (int i = 0; i < reposJson.count; i++) {
            NSLog(@"Repo JSON: %@", reposJson[i]);
            
        }
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error.localizedDescription);
    }];

    
}

@end
