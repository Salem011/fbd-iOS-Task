//
//  ReposViewModel.m
//  fbdTask
//
//  Created by Salem Mohamed on 4/29/18.
//  Copyright © 2018 Salem Mohammed. All rights reserved.
//

#import "ReposViewModel.h"
#import "APIManager.h"
#import "Repository.h"


@interface ReposViewModel ()

@property (nonatomic, strong, readonly) ReposCollectionViewController *view;
@property (nonatomic, strong) NSArray *repos;

@end


@implementation ReposViewModel

-(instancetype) initWithView:(ReposCollectionViewController *)view {
    self = [super init] ;
    if (!self)
        return nil ;
    
    _view = view ;
    return self ;
}

- (void) loadRepos {
    
    [APIManager getRepos:^(NSArray *reposArray, NSString *errorMessage) {
        if (reposArray) {
            
            NSMutableArray *reposModels = [[NSMutableArray alloc] init];
            
            for (int i = 0; i < reposArray.count; i++) {
                Repository *repo = [[Repository alloc] initWithJson: reposArray[i]];
                [reposModels addObject:repo];
            }
            _repos = reposModels ;
            // Call the view to render the view
            
        }else {
            // Call the view to handle the error message
        }
    }];
    
}

- (NSUInteger) reposCount {
    return _repos.count ;
}



@end
