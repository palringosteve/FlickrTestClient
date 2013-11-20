//
//  SBPhotoListDataSource.m
//  FlickrClient
//
//  Created by Benjamin Briggs on 20/11/2013.
//  Copyright (c) 2013 Palringo. All rights reserved.
//

#import "SBPhotoListDataSource.h"
#import "SBPhotoCell.h"

@implementation SBPhotoListDataSource


- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
#warning Return the number of photos
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellReuseIdentifier = @"Cell";
    SBPhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellReuseIdentifier
                                                                  forIndexPath:indexPath];
    
#warning Display photo and title on the cell
    return cell;
}

@end