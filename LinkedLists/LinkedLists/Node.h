#import <Foundation/Foundation.h>


@interface Node : NSObject{
    Node *next;
    int data;
}
@property Node* next;
@property int data;
@end
