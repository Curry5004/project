package chap06.Ex08;

import java.util.Arrays;

public class Q1_3 {
	/*
	 * 1QJS °°Àº
	 * 2. 
	 * 3.
	 */
	//3¹ø
	public static void main(String[] args) {
		int sum = 0;
		int[] arr1 = new int[5];
		
		for(int i=1; i<=10; i++) {
			for(int j=0; j<arr1.length; j++) {
				if(i%2==0) {
					arr1[j]=i;
					sum += arr1[j];
				} else {
					i--;
				}
			}
		}
//		int[] arr2 = {2,4,6,8,10};
//		for(int i:arr2) {
//			sum+=i;
//		}
		
		System.out.println(Arrays.toString(arr1));
		System.out.println(sum);

	}
	
}
