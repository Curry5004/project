package chap05;

public class ArrayEx01 {
	public static void main(String[] args) {
		int[] score = new int[5];
		int k = 1;
		
		score [0] = 75;
		score [1] = 100;
		score [k+1] = 70;
		score [3] = 80;
		score [4] = 90;
		
		/*
		 * 문제
		 * 각 배열의 값을 출력해 보세요
		 * 3번 인덱스와 4번 인덱스 값을 더해서 출력하시오
		 */
		for(int i=0; i<score.length; i++) {
			System.out.println(score[i]);
		}
		System.out.println(score[3]+score[4]);
		
	}

}
