#import <Foundation/Foundation.h>
#import "LinkedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LinkedList *list = [[LinkedList alloc] init];
        [list append:10];
        [list append:5];
        [list append:3];
        [list append:11];
        [list append:51];
        [list append:13];
        [list print];
        [list removeAt:3];
        [list print];
    }
    return 0;
}
