
#import <Foundation/Foundation.h>
bool isNotObvoius(int number){
    bool response = true;
    if( number ==2 || number == 3|| number ==5)
        response = false;
    return response;
}
bool isPrime(int n){
    int divisor = n-1;
    if(n==1){
        return 1;
    }
    while(divisor!=1){
        if( n% divisor == 0){
            return false;
        }else{
            divisor --;
        }
    }
    return true;
}

bool isUgly(int n){
    int divisor = n-1;
    bool response = true;
    if(isPrime(n) && isNotObvoius(n)){
        return false;
    }
    while(divisor!=1){
        if( n % divisor == 0 && isPrime(divisor) && isNotObvoius(divisor)){
            return false;
        }
        divisor --;
    }
    return response;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 1;
        int count = 1;
        while(250 >count){
            n++;
            if(isUgly(n)){
                count++;
            }
        }
        NSLog(@"Number is %d",n);
    }
    return 0;
}
