//
//  APIManager.h
//  fbdTask
//
//  Created by Salem Mohamed on 4/29/18.
//  Copyright © 2018 Salem Mohammed. All rights reserved.
//




@interface APIManager : NSObject

+ (void) getRepos: ( void ( ^ )(NSArray*, NSString*)) completionHandler ;

@end
