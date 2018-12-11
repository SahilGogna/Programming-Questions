//
//  main.m
//  TicTacToe
//
//  Created by Sahil Gogna on 2018-11-14.
//  Copyright © 2018 Sahil Gogna. All rights reserved.
//

#import <Foundation/Foundation.h>

char square[9] = { '1', '2', '3', '4', '5', '6', '7', '8' , '9'};

/*******************************************************************
 FUNCTION TO DRAW BOARD OF TIC TAC TOE WITH PLAYERS MARK
 ********************************************************************/
void printBoard()
{
    system("cls");
    printf("\n\n\tTic Tac Toe\n\n");
    
    printf("     |     |     \n");
    printf("  %c  |  %c  |  %c \n", square[0], square[1], square[2]);
    
    printf("_____|_____|_____\n");
    printf("     |     |     \n");
    
    printf("  %c  |  %c  |  %c \n", square[3], square[4], square[5]);
    
    printf("_____|_____|_____\n");
    printf("     |     |     \n");
    
    printf("  %c  |  %c  |  %c \n", square[6], square[7], square[8]);
    
    printf("     |     |     \n\n");
}

/*********************************************
 FUNCTION TO RETURN GAME STATUS
 1 FOR GAME IS OVER WITH RESULT
 -1 FOR GAME IS IN PROGRESS
 O GAME IS OVER AND NO RESULT
 **********************************************/
int checkVictory(){
    if(square[0] == square[1] && square[1]== square[2])
        return 1;
    else if(square[3] == square[4] && square[4] == square[5])
        return 1;
    else if(square[6] == square[7] && square[7]  == square[8])
        return 1;
    else if(square[0] == square[3] && square[3]  == square[6])
        return 1;
    else if(square[1] == square[4] && square[4]  == square[7])
        return 1;
    else if(square[2] == square[5] && square[5]  == square[8])
        return 1;
    else if(square[0] == square[4] && square[4]  == square[8])
        return 1;
    else if(square[2] == square[4] && square[4]  == square[6])
        return 1;
    else if(square[0] != '1' && square[1] != '2' && square[2] != '3' && square[3] != '4' &&
            square[4] != '5' && square[5] != '6' && square[6] != '7' && square[7] != '8' &&
            square[8] != '9')
        return 0;
    else return -1;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int player = 1,i,choice;
        char symbol;
        do {
            printBoard();
            player = (player%2)?1:2;
            printf("Player %d entere a choice", player);
            scanf("%d", &choice);
            symbol = (player == 1)?'X':'0';
            
            if (choice == 1 && square[0] == '1')
                square[0] = symbol;
            
            else if (choice == 2 && square[1] == '2')
                square[1] = symbol;
            
            else if (choice == 3 && square[2] == '3')
                square[2] = symbol;
            
            else if (choice == 4 && square[3] == '4')
                square[3] = symbol;
            
            else if (choice == 5 && square[4] == '5')
                square[4] = symbol;
            
            else if (choice == 6 && square[5] == '6')
                square[5] = symbol;
            
            else if (choice == 7 && square[6] == '7')
                square[6] = symbol;
            
            else if (choice == 8 && square[7] == '8')
                square[7] = symbol;
            
            else if (choice == 9 && square[8] == '9')
                square[8] = symbol;
            
            else{
                printf("Invalid Move");
                player-- ;
            }
            
            i= checkVictory();
            player++;
        } while (i == -1);
        
        printBoard();
        
        if(i == 1)
            printf("Player %d wins", --player);
        else
            printf("Game over");
    }
    return 0;
}
