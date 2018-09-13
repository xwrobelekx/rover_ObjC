//
//  KWEFetchRovers.h
//  Rover_ObjC
//
//  Created by Kamil Wrobel on 9/13/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KWERover.h"

@interface KWEFetchRovers : NSObject



//need to fetch rovers
//#1 get base urls
//#2 get api key
//#3 construct the url
//#4 write the fetch function
//#5 url session
//#6 complete with array of rovers

+(void)fetchRoverswithCompletion: (void(^)(NSArray<NSString *> *rovers))completion;

//now that i got the rovers i need to fetch soles for each rover
// i need to collete with an array of dictionaries and i need to have list of soles with the amount of pictures per sole - so i can dysplay that to the user

//+(void)fetchSolesforGivenRover: (NSString *)rover completion:(void(^)(NSArray))




@end
