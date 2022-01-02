package sec03.exam01_for;
//내가 직접 이해하기.
//할만하내!
public class ForSumFrom1To100Example {
	public static void main(String[] args) {
		int sum = 0;
		
		//1번안
		int i = 0;//밖에서 선언해주면 for 선언문 안에 들어가도 쓸 수 있다.
		for(i=1; i<=100; i++) {
			sum += i;
		}
		System.out.println("1~" + (i-1) +"합: "+sum);
		//i값이 정상적으로 나오는 것을 확인 할 수 있으며 i는 101이 되며 for문을 빠져난 것을 확인 할 수 있다
		
		
		
		
//		//2번안
//		for(int i=1; i<=100; i++) {
//			sum += i;
//		}
//		System.out.println("1~100합계: " + sum);
	}

}
