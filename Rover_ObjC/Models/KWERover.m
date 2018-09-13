//
//  KWERover.m
//  Rover_ObjC
//
//  Created by Kamil Wrobel on 9/12/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import "KWERover.h"

@implementation KWERover

// dont know what to do here - how to implement this.
//so in the master they went and initialized with the whole dictionay pulling all the properties
//

//+(void)initWithRover: (NSString *)name status: (NSString *)status max_sol:(NSInteger *)max_sol
//{
//}



//there is top level json then rovers array that holds dictionaries of rovers.
-(instancetype)initWithDictionary: (NSDictionary*)roverDictionary
{
    //how do you init this?
    self = [super init];
    if (self) {
        // now we need to asign values to our defined properties from the dictionary
        _roverName = roverDictionary[@"name"];
        _roverStatus = roverDictionary[@"status"];
        _numberOfSols = [roverDictionary[@"max_sol"] integerValue];
        
        
        
    }
    
    return self;
    //thats if for this function?
}

//whats next?
// i want to polulate the first table view with rovers
//so i have to fetch them first




@end
