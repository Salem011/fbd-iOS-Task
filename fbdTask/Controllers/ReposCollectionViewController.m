//
//  ReposCollectionViewController.m
//  fbdTask
//
//  Created by Salem Mohamed on 4/29/18.
//  Copyright © 2018 Salem Mohammed. All rights reserved.
//

#import "ReposCollectionViewController.h"
#import "RepoCollectionViewCell.h"
#import "APIManager.h"
#import "Repository.h"

@interface ReposCollectionViewController ()

@end

@implementation ReposCollectionViewController

static NSString * const reuseIdentifier = @"repoCell";

- (void)viewDidLoad {
    [super viewDidLoad];

    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.estimatedItemSize = UICollectionViewFlowLayoutAutomaticSize;
    self.collectionView.collectionViewLayout = layout;
    
    
    [APIManager getRepos:^(NSArray *repos, NSString *errorMessage) {
        if (repos != nil) {
            for (int i = 0; i < repos.count; i++) {
                Repository *repo = repos[i] ;
                NSLog(@"Repo Name: %@", repo.name);
            }
        }else {
            NSLog(@"Error retrieved: %@", errorMessage);
        }
       
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    RepoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    cell.nameLabel.text = @"Repo Name" ;
    if (indexPath.row == 0)
        cell.repoDescriptionLabel.text = @"Repo Descripton" ;
    else
        cell.repoDescriptionLabel.text = @"Repo Descripton Repo Descripton Repo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo DescriptonRepo Descripton" ;
    cell.ownerLoginLabel.text = @"FB Login!" ;
    cell.containerView.backgroundColor = [UIColor blueColor];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
