package com.hackerrank;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class MindGeeksNumbers {

	private static Random random = new Random();
	private static int LOWER_BOUND = -1000;
	private static int UPPER_BOUND = 1000;

	public static void main(String[] args) {
		List<Integer> list_1 = generateList();
		List<Integer> list_2 = generateList();
		List<Integer> list_3 = generateList();
		List<Integer> list_4 = generateList();
		List<Integer> list_5 = generateList();
		
		list_1 = getFilteredList(list_1);
		list_2 = getFilteredList(list_2);
		list_3 = getFilteredList(list_3);
		list_4 = getFilteredList(list_4);
		list_5 = getFilteredList(list_5);
		
		print("--------------------");
		print(getListSum(list_1));
		print(getListSum(list_2));
		print(getListSum(list_3));
		print(getListSum(list_4));
		print(getListSum(list_5));
		print("--------------------");
		
		print(getDistinctCount(list_1));
		print(getDistinctCount(list_2));
		print(getDistinctCount(list_3));
		print(getDistinctCount(list_4));
		print(getDistinctCount(list_5));
		print("--------------------");
		
		Stream<Integer> stream_1 = joinStreams(list_1.stream(), list_2.stream());
		Stream<Integer> stream_2 = joinStreams(list_3.stream(), list_4.stream());
		Stream<Integer> joinedStream = joinStreams(stream_1,stream_2);
		
		List<Integer> mergedList = joinStreams(joinedStream,list_5.stream()).collect(Collectors.toList());
		print(getListSum(mergedList)/mergedList.size());
                

	}
	
	/**
	 * 
	 * @param firstStream
	 * @param secondStream
	 * @return merge 2 streams into one
	 */
	public static Stream<Integer> joinStreams(Stream<Integer> firstStream, Stream<Integer> secondStream){
		return Stream.concat(firstStream,secondStream);
	}
	
	/**
	 * 
	 * @param list
	 * @return distinct number of elements in a list
	 */
	public static int getDistinctCount(List<Integer> list) {
		return (int) list.stream().distinct().count();
	}
	
	/**
	 * prints the sum of numbers of list
	 * @param list
	 */
	public static int getListSum(List<Integer> list) {
		int sum = 0;
		for(int number:list) {
			sum+=number;
		}
		return sum;
	}
	
	/**
	 * prints parameter on the console
	 * @param object
	 */
	public static void print(Object object) {
		System.out.println(object);
	}

	/**
	 * 
	 * @param list
	 * @param numberArray
	 * @return list of numbers divisible by any of the number in array
	 */
	public static List<Integer> getFilteredList(List<Integer> list) {
		int[] numberArray = generateRandomNumberArray();
		List<Integer> filteredList = list.stream().filter(
				number -> number % numberArray[0] == 0 || number % numberArray[1] == 0 || number % numberArray[2] == 0)
				.collect(Collectors.toList());
		return filteredList;
	}

	/**
	 * 
	 * @param upperBound
	 * @param lowerBound
	 * @param random
	 * @return a list of 1000 random integers between a specified range
	 */
	public static List<Integer> generateList() {
		List<Integer> randomIntList = new ArrayList<>();
		for (int i = 0; i < 1000; i++) {
			randomIntList.add(generateRandomNumber());
		}
		return randomIntList;
	}

	/**
	 * 
	 * @param random
	 * @return generate random number
	 */
	public static int generateRandomNumber() {
		return random.nextInt(UPPER_BOUND - LOWER_BOUND + 1) + LOWER_BOUND;
	}

	/**
	 * 
	 * @param random
	 * @return an array of 3 different random numbers
	 */
	public static int[] generateRandomNumberArray() {
		int[] threeRandomNumber = new int[3];
		int firstNumber = generateRandomNumber();
		int secondNumber = generateRandomNumber();
		while (checkEquality(firstNumber, secondNumber)) {
			secondNumber = generateRandomNumber();
		}
		int thirdNumber = generateRandomNumber();
		while (checkEquality(firstNumber, thirdNumber) || checkEquality(secondNumber, thirdNumber)) {
			thirdNumber = generateRandomNumber();
		}
		System.out.println("Numbers Generated: "+firstNumber+" "+secondNumber+" "+thirdNumber);
		threeRandomNumber[0] = firstNumber;
		threeRandomNumber[1] = secondNumber;
		threeRandomNumber[2] = thirdNumber;
		return threeRandomNumber;
	}

	/**
	 * 
	 * @param firstNumber
	 * @param secondNumber
	 * @return true if firstNumber = secondNumber
	 */
	public static boolean checkEquality(int firstNumber, int secondNumber) {
		return firstNumber == secondNumber;
	}

}