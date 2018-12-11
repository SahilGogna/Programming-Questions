//
//  main.m
//  patterQuestions
//
//  Created by Sahil Gogna on 2018-10-06.
//  Copyright © 2018 Sahil Gogna. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
     *
    ***
   *****
  *******
 *********
First two loops i and j print the spaces, then we print number of stars that are required. After printing spaces we
note that we require 1,3,5,7,9 number of stars. K loop prints stars.
 */
void pattern1(){
    for(int i=0; i<=4;i++){
        for(int j=0; j<4-i; j++)
            printf(" ");
        for(int k=0; k<(i*2)+1 ; k++)
            printf("*");
        printf("\n");
    }
}
/*
 *********
  *******
   *****
    ***
     *
 */
void pattern2(){
    for(int i=0; i<=4;i++){
        for(int k=i; k>=0; k--)
            printf(" ");
        for(int j=0; j<=4-i; j++)
            printf("*");
        for( int l=4-1-i;l>=0;l--)
            printf("*");
        printf("\n");
    }
}

/*
 *********
  *******
   *****
    ***
     *
 */
void pattern_2(){
    for(int i=5; i>0;i--){
        for(int j=5;j<i;j--)
            printf(" ");
        for(int k=0; k<(i*2);k++)
            printf("*");
    }
}

void pattern3(){
    int k=0;
    for(int i=1;i<=9;i++){
        i<=5?k++:k--;
        for(int j=1; j<=9;j++){
            if(j<=(6-k) || j>=(4+k))
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        pattern3();
    }
    return 0;
}
