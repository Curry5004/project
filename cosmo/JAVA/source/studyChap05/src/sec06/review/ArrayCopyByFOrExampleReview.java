package sec06.review;

public class ArrayCopyByFOrExampleReview {
	public static void main(String[] args) {
		int[] scores = {1,2,3,4,5};
		
		int sum = 0;
		for(int i : scores) {//변수를 설정하고 가져올 배열을 입력= go
			sum += i;
		}
		System.out.println(sum);
		
	}

}
