//
//  Animal.h
//  ObjectOrientedConcepts
//
//  Created by Sahil Gogna on 2018-11-06.
//  Copyright © 2018 Sahil Gogna. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject{
    NSString *name;
}
//-(id)initWithString:(NSString*) namee;
-(NSString*) getName;
-(void) setName:(NSString*) namee;
-(void) sound;

@end

NS_ASSUME_NONNULL_END
