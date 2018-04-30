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
    // Set the cell's custom content view to the screen width and that will force both the cell and the content view to be within the screen width.
    _contentViewWidthConstraint.constant = UIScreen.mainScreen.bounds.size.width - 20 ;
}

@end
