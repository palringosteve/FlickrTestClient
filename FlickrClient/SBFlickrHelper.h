//
//  SBFlickrHelper.h
//  FlickrClient
//
//  Created by Steve Wilford on 20/11/2013.
//  Copyright (c) 2013 Palringo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SBFlickrHelper : NSObject

/**
 * Constructs an NSURL to retrieve a list of photos on a particular page.
 * @param pageNumber The page number.
 * @param numberOfPhotosPerPage The number of photos to retrieve per page.
 * @returns A properly constructed URL based on the input parameters.
 */
+(NSURL *)URLForPhotosFeedAtPage:(int)pageNumber photosPerPage:(int)numberOfPhotosPerPage;

/**
 * Constructs an NSURL to retrieve geo-location information for a particular
 * photo.
 * @param photoID The ID of the photo.
 * @returns A properly construct URL based on the input parameters.
 */
+(NSURL *)URLToRetrieveGeoInfoForPhotoWithID:(NSString *)photoID;

@end
