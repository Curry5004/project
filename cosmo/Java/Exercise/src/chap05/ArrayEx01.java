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
		 * ����
		 * �� �迭�� ���� ����� ������
		 * 3�� �ε����� 4�� �ε��� ���� ���ؼ� ����Ͻÿ�
		 */
		for(int i=0; i<score.length; i++) {
			System.out.println(score[i]);
		}
		System.out.println(score[3]+score[4]);
		
	}

}
