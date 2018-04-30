//
//  RepoCollectionViewCell.h
//  fbdTask
//
//  Created by Salem Mohamed on 4/29/18.
//  Copyright © 2018 Salem Mohammed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RepoCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *repoDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *ownerLoginLabel;

@property (weak, nonatomic) IBOutlet UIView *containerView;


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentViewWidthConstraint;


@end
