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


+ (void) getRepos: (void (^) (NSArray*, NSString*)) completionHandler {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"https://api.github.com/users/facebook/repos" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        NSArray *reposJson = responseObject ;
        NSMutableArray *repos = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < reposJson.count; i++) {
            Repository *repo = [[Repository alloc] initWithJson:reposJson[i]];
            [repos addObject:repo];
        }
        completionHandler(repos, nil);
        
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error.localizedDescription);
        completionHandler(nil, error.localizedDescription);
    }];

    
}

@end
