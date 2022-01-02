package chap04;

public class FlowEx13 {
	public static void main(String[] args) {
		int sum = 0;// 합계를 저장하기 위한 변수
		//문제: for 반목문을 사용하여 1~10까지 합계를 구하여라
		for(int i=1; i<=10; i++) {
			sum += i;
		}
		
		System.out.println("합계: "+sum);
		System.out.println();
		
		for(int i=1, j=10; i<=10; i++, j--) {
			System.out.printf("%d \t %d", i, j);//printf 문에서 숫자값을 넣으려면 d를 넣어준다
			System.out.println();
		}
		
		for(int i=1; i<=5; i++) {
			//System.out.println("**********");
			for(int j=1; j<=i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
	}

}
