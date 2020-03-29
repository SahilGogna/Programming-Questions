package com.hackerrank;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

/**
 * provided by hackerrank
 * @param args
 */
class Node {
    Node left;
    Node right;
    int data;
    
    Node(int data) {
        this.data = data;
        left = null;
        right = null;
    }
}

public class Solution {
	
	/* 
    
    class Node 
    	int data;
    	Node left;
    	Node right;
	*/
	/**
	 * write this function
	 * @param root
	 */
	public static void levelOrder(Node root) {
		Queue<Node> list = new LinkedList<>(); 
		list.add(root);
		while(!list.isEmpty()) {
			Node node = list.poll();
			System.out.print(node.data+" ");
			/*Enqueue left child */
            if (node.left != null) { 
                list.add(node.left); 
            } 
  
            if (node.right != null) { 
                list.add(node.right); 
            } 
		}
		
    }
	/**
	 * provided by hackerrank
	 * @param args
	 */
	public static Node insert(Node root, int data) {
        if(root == null) {
            return new Node(data);
        } else {
            Node cur;
            if(data <= root.data) {
                cur = insert(root.left, data);
                root.left = cur;
            } else {
                cur = insert(root.right, data);
                root.right = cur;
            }
            return root;
        }
    }

	/**
	 * provided by hackerrank
	 * @param args
	 */
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int t = scan.nextInt();
        Node root = null;
        while(t-- > 0) {
            int data = scan.nextInt();
            root = insert(root, data);
        }
        scan.close();
        levelOrder(root);
    }	
}
