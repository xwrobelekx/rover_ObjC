//
//  KWERover.h
//  Rover_ObjC
//
//  Created by Kamil Wrobel on 9/12/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KWERover : NSObject

//so this is gone have my rover + status of the rover + max_sol

@property (nonatomic, readonly, copy) NSString *roverName;
@property (nonatomic, readonly, copy) NSString *roverStatus;
@property (nonatomic, readonly) NSInteger numberOfSols;

//so this would initialize - create my rover with name/status/and number of soles.
//+(void)initWithRover: (NSString *)name status: (NSString *)status max_sol:(NSInteger *)max_sol;

//so this needs to be instance method, and instance type other vise its throwing lots of errors
-(instancetype)initWithDictionary: (NSDictionary*)roverDictionary;




@end
