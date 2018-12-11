#import <Foundation/Foundation.h>

@interface LinkedList : NSObject{
    LinkedList *next;
    int data;
}
-(void) setData:(int)d;
-(void) setNext:(LinkedList*)n;
-(int) getData;
-(LinkedList*) getNext;
-(void) append:(int)value;
-(void) print;
-(void) charAt:(int)index;
-(void)removeAt:(int)index;
@end

