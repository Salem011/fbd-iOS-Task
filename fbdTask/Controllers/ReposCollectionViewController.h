//
//  ReposCollectionViewController.h
//  fbdTask
//
//  Created by Salem Mohamed on 4/29/18.
//  Copyright © 2018 Salem Mohammed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReposCollectionViewController : UICollectionViewController <UICollectionViewDelegateFlowLayout>

- (void) reposAreLoaded;
- (void) displayErrorMessage: (NSString *) message;

@end
