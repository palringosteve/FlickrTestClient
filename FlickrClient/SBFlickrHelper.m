//
//  SBFlickrHelper.m
//  FlickrClient
//
//  Created by Steve Wilford on 20/11/2013.
//  Copyright (c) 2013 Palringo. All rights reserved.
//

#import "SBFlickrHelper.h"

NSString * const SBFlickrPhotosURLFormat = @"https://api.flickr.com/services/rest/?method=flickr.people.getPhotos&api_key=f78e2564744ff7257ee56a7c5bfbc99c&user_id=45166873%%40N06&extras=url_sq&per_page=%d&page=%d&format=json&nojsoncallback=1";

NSString * const SBFlickPhotoGeoURLFormat = @"https://api.flickr.com/services/rest/?method=flickr.photos.geo.getLocation&api_key=f78e2564744ff7257ee56a7c5bfbc99c&photo_id=%@&format=json&nojsoncallback=1";

@implementation SBFlickrHelper

+(NSURL *)URLForPhotosFeedAtPage:(int)pageNumber photosPerPage:(int)numberOfPhotosPerPage
{
    NSString *urlString = [NSString stringWithFormat:SBFlickrPhotosURLFormat, numberOfPhotosPerPage, pageNumber];
    return [NSURL URLWithString:urlString];
}

+(NSURL *)URLToRetrieveGeoInfoForPhotoWithID:(NSString *)photoID
{
    NSString *urlString = [NSString stringWithFormat:SBFlickPhotoGeoURLFormat, photoID];
    return [NSURL URLWithString:urlString];
}

@end