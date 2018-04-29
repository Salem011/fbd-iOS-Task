//
//  RepoCollectionViewCell.m
//  fbdTask
//
//  Created by Salem Mohamed on 4/29/18.
//  Copyright © 2018 Salem Mohammed. All rights reserved.
//

#import "RepoCollectionViewCell.h"

@implementation RepoCollectionViewCell

-(void) awakeFromNib {
    [super awakeFromNib];
    _contentViewWidthConstraint.constant = UIScreen.mainScreen.bounds.size.width - 20 ;
}

@end
