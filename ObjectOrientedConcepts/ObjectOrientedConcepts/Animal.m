//
//  Animal.m
//  ObjectOrientedConcepts
//
//  Created by Sahil Gogna on 2018-11-06.
//  Copyright © 2018 Sahil Gogna. All rights reserved.
//

#import "Animal.h"

@implementation Animal

//-(id)initWithString:namee{
//    self = [super init];
//    name = [NSString stringWithString:namee];
//    return self;
//}
-(id)init{
    self = [super init];
    return self;
}
-(NSString*) getName{
    return name;
}
-(void) setName:(NSString*) namee{
    name = [NSString stringWithString:namee];
}
-(void) sound{
    NSLog(@"I am an animal");
}
@end
