//
//  Repository.m
//  fbdTask
//
//  Created by Salem Mohamed on 4/29/18.
//  Copyright © 2018 Salem Mohammed. All rights reserved.
//

#import "Repository.h"

@implementation Repository

- (instancetype)initWithJson:(NSDictionary *)json {
    
    if (self = [super init]) {
        self.repoID = json[@"id"];
        self.name = json[@"name"];
        self.descriptionText = json[@"description"];
        self.isForked = [json[@"fork"] boolValue];
        self.ownerLogin = json[@"owner"][@"login"] ;
    }
    
    return self ;
}



@end
