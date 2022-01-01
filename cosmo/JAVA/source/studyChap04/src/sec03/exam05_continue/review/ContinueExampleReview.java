package sec03.exam05_continue.review;
//continue문을 사용하여 1-10까지 숫자 중 짝수만 출력하는 프로그램을 만들어라
public class ContinueExampleReview {
	public static void main(String[] args) {
		for(int i=1; i<=10; i++) {
			if(i%2!=0) {
				System.out.println("홀수입니다");
				continue;
			}
			System.out.println(i);
		}
		
	}

}
