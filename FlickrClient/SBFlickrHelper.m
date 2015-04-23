//
//  SBFlickrHelper.m
//  FlickrClient
//
//  Created by Steve Wilford on 20/11/2013.
//  Copyright (c) 2013 Palringo. All rights reserved.
//

#import "SBFlickrHelper.h"

NSString *const SBFlickrAPIKey = @"b159c6d529e39a0808b30535ae68c6c7";

NSString *const SBFlickrPhotosURLFormat =
@"https://api.flickr.com/services/rest/?method=flickr.people.getPhotos\
&api_key=%@\
&user_id=45166873%%40N06\
&extras=url_sq\
&per_page=%d\
&page=%d\
&format=json\
&nojsoncallback=1";

NSString *const SBFlickPhotoGeoURLFormat =
@"https://api.flickr.com/services/rest/?method=flickr.photos.geo.getLocation\
&api_key=%@\
&photo_id=%@\
&format=json\
&nojsoncallback=1";

@implementation SBFlickrHelper

+(NSURL *)URLForPhotosFeedAtPage:(int)pageNumber photosPerPage:(int)numberOfPhotosPerPage
{
    NSString *urlString = [NSString stringWithFormat:SBFlickrPhotosURLFormat, SBFlickrAPIKey, numberOfPhotosPerPage, pageNumber];
    return [NSURL URLWithString:urlString];
}

+(NSURL *)URLToRetrieveGeoInfoForPhotoWithID:(NSString *)photoID
{
    NSString *urlString = [NSString stringWithFormat:SBFlickPhotoGeoURLFormat, SBFlickrAPIKey, photoID];
    return [NSURL URLWithString:urlString];
}

@end