package com.google;

import java.util.ArrayList;
import java.util.List;

public class FirstRecurringCharacter {

	public static void main(String[] args) {
		System.out.println(getFirstRecCharacter("ABDHFAB"));
		System.out.println(getFirstRecCharacter("LKJHGFOK"));
		
	}
	
	public static char getFirstRecCharacter(String word) {
		 char[] charArray = word.toCharArray();
		 List<Character> characterList = new ArrayList<>();
		 char repeating = Character.MIN_VALUE;
		for (char alphabet: charArray) {
			if(!characterList.contains(alphabet)) {
				characterList.add(alphabet);
			}else {
				repeating = alphabet;
				break;
			}
		}
		return repeating;
	}

}
