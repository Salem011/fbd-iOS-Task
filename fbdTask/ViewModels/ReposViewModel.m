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
            [_view reposAreLoaded];
        }else {
            // Call the view to handle the error message
            [_view displayErrorMessage:errorMessage];
        }
    }];
    
}

- (NSUInteger) reposCount {
    if (!_repos)
        return 0 ;
    return _repos.count ;
}

- (NSString *) repoNameAtIndex:(NSInteger)index {
    Repository *repo = [_repos objectAtIndex:index];
    return repo.name;
}

- (NSString *) repoDescriptionAtIndex:(NSInteger)index {
    Repository *repo = [_repos objectAtIndex:index];
    NSString *repoDescription = repo.descriptionText ;
    
    // A crash happends because of the dynamic dimensions of the cell when a repo description is NULL
    if ([repoDescription isKindOfClass:[NSNull class]])
        return @"";
    else
        return repo.descriptionText;
}

- (NSString *) repoOwnerLogin:(NSInteger)index {
    Repository *repo = [_repos objectAtIndex:index];
    NSString *ownerLogin = @"Owner Login: " ;
    
    return [ownerLogin stringByAppendingString:repo.ownerLogin];
}

- (UIColor *) repoBackgroundColorAtIndex:(NSInteger)index {
    Repository *repo = [_repos objectAtIndex:index];
    if (repo.isForked)
        return [[UIColor greenColor] colorWithAlphaComponent: 0.4];
    return [UIColor whiteColor];
}

@end
