package day2;

import java.util.Arrays;

public class TestMain {

	public static void main(String[] args) {

		Lotto l1 = new Lotto();
		l1.print();
		int[] lottoArray = l1.getM();
		
		System.out.println(Arrays.toString(lottoArray));
	}

}
