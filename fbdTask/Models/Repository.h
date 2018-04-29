//
//  Repository.h
//  fbdTask
//
//  Created by Salem Mohamed on 4/29/18.
//  Copyright © 2018 Salem Mohammed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Repository: NSObject

@property (nonatomic, copy) NSNumber *repoID;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *descriptionText;
@property (nonatomic, copy) NSString *ownerLogin;
@property (nonatomic) BOOL isForked ;


@end

