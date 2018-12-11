//
//  main.m
//  ObjectOrientedConcepts
//
//  Created by Sahil Gogna on 2018-11-06.
//  Copyright © 2018 Sahil Gogna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Lion.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Animal *animal = [[Animal alloc] init];
        [animal sound];
        [animal setName:@"Lion"];
        NSLog([animal getName]);
    }
    return 0;
}
