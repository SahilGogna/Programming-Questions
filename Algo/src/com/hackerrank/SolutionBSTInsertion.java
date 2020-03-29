package com.hackerrank;

import java.util.Scanner;

public class SolutionBSTInsertion {
	
	
	
  	public static void preOrder( Node root ) {
        
    	if( root == null)
        	return;
      
        System.out.print(root.data + " ");
        preOrder(root.left);
        preOrder(root.right);
     
    }

 /* Node is defined as :
 class Node 
    int data;
    Node left;
    Node right;
    
    */

	public static Node insert(Node root,int data) {
        if(root == null) return new Node(data);
        if(root.data > data){
            //left
            if(root.left != null) insert(root.left,data);
            else root.left = new Node(data);
        }else{
            //right
            if(root.right != null) insert(root.right,data);
            else root.right = new Node(data);
        }
        return root;
    }

	public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int t = scan.nextInt();
        Node root = null;
        while(t-- > 0) {
            int data = scan.nextInt();
            root = insert(root, data);
        }
        scan.close();
      	preOrder(root);
    }	

}
