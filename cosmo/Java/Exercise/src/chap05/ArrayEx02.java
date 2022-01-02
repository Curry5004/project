package chap05;

public class ArrayEx02 {
	public static void main(String[] args) {
		int sum = 0;
		double avg = 0.0;
		int[] score = {100, 88, 100, 100, 90};
		
		/*
		 * 총점과 평균을 출력하시오
		 * 
		 */
		for(int sum2:score) {
			sum +=sum2;
		}
		avg = (double)sum/score.length;
		System.out.println(sum);
		System.out.println(avg);
	}

}
