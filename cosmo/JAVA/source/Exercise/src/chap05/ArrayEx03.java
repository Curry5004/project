package chap05;

public class ArrayEx03 {
	public static void main(String[] args) {
		int[] array = {79, 88, 91, 55, 100, 95};
		int max = 0;
		int min = 0;
		/*
		 * for문을 사용하여 최대값 최소값 찾는 식을 짜보기
		 */
		
		for(int i:array) {
			if(max<i) {
				max=i;
			}
		}
		min = array[0];
		for(int i:array) {
			if(min>i) {
				min=i;
			}
		}
		System.out.println(max);
		System.out.println(min);
	}

}
