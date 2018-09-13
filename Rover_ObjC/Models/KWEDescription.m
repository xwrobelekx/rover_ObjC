//
//  KWEDescription.m
//  Rover_ObjC
//
//  Created by Kamil Wrobel on 9/12/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import "KWEDescription.h"

NSURL *ApiKey = @"TslgOjWjXgLHVDUtTJfypTjqVVn6I6mKCMacTgbx";

NSString *baseUrl = @"https://api.nasa.gov/mars-photos/api/v1/rovers/";


@implementation KWEDescription

/*
//url examples
//https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY
//https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz&api_key=DEMO_KEY
//https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&page=2&api_key=DEMO_KEY
 -
 
 - base url
 - querry items
 - api key
 
 url component  - 3 rowers: curiosity - opportunity - spirit  -> rovers/curiosity/
 
 querry item 1  -  sols: 0 to max -> sol=0 ...max
 
 guerry item 2  -  -25 photos per page -> page=1
 
 querry item 3  -  apiKey
 
 camera - default "all"
 
 

*/


@end
