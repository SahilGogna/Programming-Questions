//
//  LinkedList.m
//  LinkedLists
//
//  Created by Sahil Gogna on 2018-11-01.
//  Copyright © 2018 Sahil Gogna. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

-(id) init{
    self = [super init];
    next = nil;
    data = 0;
    return self;
}
-(void) setData:(int)d{
    data = d;
}
-(void) setNext:(LinkedList*)n{
    next = n;
}
-(int) getData{
    return data;
}
-(LinkedList*) getNext{
    return next;
}
-(void) append:(int)value{
    LinkedList *temp = self;
    while([temp getNext]!= nil)
         temp = [temp getNext];
    [temp setNext:[[LinkedList alloc] init]];
    [[temp getNext] setData:value];
}
-(void) print{
    LinkedList *temp = self;
    while([temp getNext]!= nil){
       temp = [temp getNext];
    NSLog(@"%d ", [temp getData]);
    }
}
-(void) charAt:(int)index{
    LinkedList *temp = self;
    for(int i=0; i<index;i++)
        temp = [temp getNext];
    NSLog(@"%d ", [temp getData]);
    //todo handle if size exceeds the length of the list
}
-(void)removeAt:(int)index {
    LinkedList *temp = self;
    for(int i=0; i<index-1;i++)
        temp = [temp getNext];
    [temp setNext:[[temp getNext] getNext]];
}
@end
