//
//  main.m
//  Strings
//
//  Created by Sahil Gogna on 2018-10-18.
//  Copyright © 2018 Sahil Gogna. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSString *nsString = @"This is NSString";
//        NSString *numberString = @"234";
//        NSInteger number = [numberString integerValue];
//        NSMutableString *nsMutableString = [NSMutableString stringWithFormat:@"This is %d ns Mutable String",3];
//
//        NSMutableString *myString = [NSMutableString stringWithFormat:@"234"];
//        NSInteger newNumber = [myString integerValue];
//        NSLog(@"%@", nsMutableString);
        
        
        
                NSMutableString *mString1;
                NSMutableString *mString2;
        
                mString1 = [NSMutableString stringWithString:@"Hello"];
                mString2 = [NSMutableString stringWithString:@"World! "];
        
                [mString1 appendString:@" World"];
                NSLog(@"%@ ",mString1);
                NSLog(@"%@ ",mString2);
        
                int length1, length2;
                length1 = [mString1 length];
                length2 = [mString2 length];
        
                NSLog(@"Lenght of first : %d  Length of second: %d ",length1,length2);
        
                NSRange match = [mString1 rangeOfString:@"Hello"];
        
                if(match.location == NSNotFound)
                    NSLog(@"Not Found");
                else
                    NSLog(@"index of example = %lu", match.location); // long unsingned lu
        
//                checking two ns strings if([str1 isEqualToString: str2])
        
//                replacing a part of the string
                NSMutableString *mString1;
                mString1 = [NSMutableString stringWithString:@"Hello World"];
                NSRange match = [mString1 rangeOfString:@"Hello"];
                [mString1 replaceCharactersInRange:NSMakeRange(match.location,5) withString:@"Hey"];
        
//                better approach
                NSMutableString *mString1;
                mString1 = [NSMutableString stringWithString:@"Hello World"];
        
                [mString1 replaceCharactersInRange:[mString1 rangeOfString:@"Hello"] withString:@"Hey"];
        
                  NSMutableString *mString1;
                  mString1 = [NSMutableString stringWithString:@"Hello World"];
        
                [mString1 deleteCharactersInRange:[mString1 rangeOfString:@"Hello"]];
        
                NSLog(@"%@ ",mString1);
        
        
                NSString *str = @"12345";
                double num = [str doubleValue];
                NSLog(@"%f", num+1.222);

    }
    return 0;
}
