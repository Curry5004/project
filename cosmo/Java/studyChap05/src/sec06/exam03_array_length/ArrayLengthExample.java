package sec06.exam03_array_length;
//배열길이 score.length에 대한 이야기. 배열에 있는 항목 수를 나태며 이는 for 구문을 통해 루프를 진행할 때 아주 유용하게 쓸 수 있다
public class ArrayLengthExample {
	public static void main(String[] args) {
		int[] score = {83, 90, 87};
		
		int sum = 0;
		for(int i=0; i<score.length; i++) {
			sum += score[i];
		}
		System.out.println(sum);
		
		double avg = (double)sum/score.length;
		System.out.println(avg);

		
	}

}
