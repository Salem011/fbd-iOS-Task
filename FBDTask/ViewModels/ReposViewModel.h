//
//  ReposViewModel.h
//  fbdTask
//
//  Created by Salem Mohamed on 4/29/18.
//  Copyright © 2018 Salem Mohammed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReposCollectionViewController.h"

@interface ReposViewModel: NSObject

- (void) loadRepos ;
- (NSUInteger) reposCount ;

- (NSString *) repoNameAtIndex: (NSInteger) index ;
- (NSString *) repoDescriptionAtIndex: (NSInteger) index ;
- (NSString *) repoOwnerLogin: (NSInteger) index ;
- (UIColor *) repoBackgroundColorAtIndex: (NSInteger) index ;


- (instancetype) initWithView: (ReposCollectionViewController *) view ;

@end

