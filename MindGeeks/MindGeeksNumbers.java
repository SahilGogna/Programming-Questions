
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

/**
 * 
 * @author sahilgogna
 * Apr 5, 2020
 */
public class MindGeeksNumbers {

	private static Random random = new Random();
	private static int LOWER_BOUND = -10000;
	private static int UPPER_BOUND = 10000;
	private static int LOWER_RANGE = 1;
	private static int UPPER_RANGE = 6; // exclusive
	private static int NUMBER_OF_DIVISORS = 3;
	private static Set<Integer> DIVISORS;

	public static void main(String[] args) {

		// 1. creating 5 lists
		List<List<Integer>> lists = IntStream.range(LOWER_RANGE, UPPER_RANGE).mapToObj(x -> generateList())
				.collect(Collectors.toList());

		// 2. filtering lists
		generateRandomDivisors();
		List<List<Integer>> filteredLists = lists.stream().map(x -> getFilteredList(x)).collect(Collectors.toList());

		// 3. printing sum of each list
		filteredLists.stream().mapToInt(x -> getListSum(x)).forEach(System.out::println);

		// 4. printing number of distinct elements in each list
		filteredLists.stream().mapToInt(x -> getDistinctCount(x)).forEach(System.out::println);

		// 5. merging filtered lists in part 2 to a single list
		List<Integer> allMergedLists = filteredLists.stream().flatMap(List::stream).collect(Collectors.toList());

		// 6. Print out the global average value of this final list
		print(getListSum(allMergedLists) / allMergedLists.size());

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
	 * 
	 * @param list
	 */
	public static int getListSum(List<Integer> list) {
		return list.stream().reduce(0, (a, b) -> a + b);
	}

	/**
	 * prints parameter on the console
	 * 
	 * @param object
	 */
	public static void print(Object object) {
		System.out.println(object);
	}

	/**
	 * 
	 * @return list of numbers divisible by any of the number in divisor set
	 */
	public static List<Integer> getFilteredList(List<Integer> list) {
		List<Integer> filteredList = list.stream().filter(number -> isDivisible(number)).collect(Collectors.toList());
		return filteredList;
	}

	/**
	 * @return if the number is divisible by any number in set
	 */
	public static Boolean isDivisible(int number) {
		Boolean flag = false;
		for (int divisor : DIVISORS) {
			if (number % divisor == 0) {
				flag = true;
				break;
			}
		}
		return flag;
	}

	/**
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
	 * @return generate random number
	 */
	public static int generateRandomNumber() {
		return random.nextInt(UPPER_BOUND - LOWER_BOUND + 1) + LOWER_BOUND;
	}

	/**
	 * 
	 * @return an array of 3 different random numbers
	 */
	public static void generateRandomDivisors() {
		Set<Integer> hash_Set = new HashSet<Integer>();
		while (hash_Set.size() != NUMBER_OF_DIVISORS) {
			int randomNumber = generateRandomNumber();
			if (randomNumber != 0) {
				hash_Set.add(randomNumber);
			}
		}
		DIVISORS = hash_Set;
	}

}