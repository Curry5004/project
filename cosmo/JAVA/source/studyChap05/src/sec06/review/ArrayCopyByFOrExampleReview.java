package sec06.review;

public class ArrayCopyByFOrExampleReview {
	public static void main(String[] args) {
		int[] scores = {1,2,3,4,5};
		
		int sum = 0;
		for(int i : scores) {//������ �����ϰ� ������ �迭�� �Է�= go
			sum += i;
		}
		System.out.println(sum);
		
	}

}
