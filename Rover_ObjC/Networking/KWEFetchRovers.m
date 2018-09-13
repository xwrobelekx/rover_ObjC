//
//  KWEFetchRovers.m
//  Rover_ObjC
//
//  Created by Kamil Wrobel on 9/13/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import "KWEFetchRovers.h"


@implementation KWEFetchRovers

//base url
+ (NSURL *)baseURL
{
    return [NSURL URLWithString:@"https://api.nasa.gov/mars-photos/api/v1/rovers/"];
}

+ (NSURLQueryItem *)apiKey
{
    return [NSURLQueryItem queryItemWithName:@"api_key" value: @"TslgOjWjXgLHVDUtTJfypTjqVVn6I6mKCMacTgbx"];
}

//url to fetch rovers

+(NSURL *)roversUrl
{
    NSURL *url = [self baseURL];
    
    //now i need to append the api key to base url
    NSURLComponents *urlComponents = [NSURLComponents componentsWithURL:url resolvingAgainstBaseURL:TRUE];

    urlComponents.queryItems = [[NSArray  alloc] initWithObjects: [KWEFetchRovers apiKey], nil];
    
    NSLog(@"%@", urlComponents.URL);
    return urlComponents.URL;
    //so this should now return rovers url with the api key attached ot it.
}

//now we should be able to fetch the rovers - and then populate the first tableview

// so when im fetching i wont be returning anything, but i will be completing with something
//this function doesnt take anything

+(void)fetchRoverswithCompletion: (void(^)(NSArray<NSString *> *rovers))completion
{
    //not sure why we need to call this url like this, but i guess its because were trying to bring it from within the same class.
    NSURL *roverURL = [KWEFetchRovers roversUrl];
    
    NSLog(@"%@", [roverURL absoluteString]);
    
    [[[NSURLSession sharedSession] dataTaskWithURL:roverURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            NSLog(@"Error with Data source durnig URLSession when getting rovers %@ %@", error, error.localizedDescription);
            completion(nil);
            return;
        }
        
        NSLog(@"Response: %@", response);
        
        if (!data) {
            NSLog(@"No Data, or error with Data on Rovers %@ %@", error, error.localizedDescription);
            completion(nil);
            return;
        }
        //so this acceses the top level json and serializes it into json data
        NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData: data options: 0 error: &error];
        
        
        //so i got the top level json, now i need to acces the array;
        //not sure exacly whats going one here:
        //ok so creating a pointer to roversDictionary and then were making sure jsonDict is there and it of the right type so then we can acces and assign rovers
        NSArray *roversDictionary = nil;
        if (!jsonDictionary || ![jsonDictionary isKindOfClass: [NSDictionary class]] || !(roversDictionary = jsonDictionary[@"rovers"])) {
            NSLog(@"Error %@", error);
            completion(nil);
        }
        
        
        
        //now i shoud have my data so i need to complete with it
        //and im looking to get an array of rovers
        NSMutableArray *roversArray = [[NSMutableArray alloc] init];

        
            for (NSDictionary *dict in roversDictionary){
                NSString * name = dict[@"name"];
                if (name) {[roversArray addObject: name];}
            }
        completion(roversArray);
        
    }]resume];
    
    
    
}






@end


















