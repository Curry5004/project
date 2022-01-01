package sec03.exam01_for.review;

public class forReview {
	public static void main(String[] args) {
		//ForPrint1To10Example 연습
		
		for (int i=0; i<=10; i++) {
			System.out.println(i);
		}
//		System.out.println(i);
		/*for 문 안에서 선언된 변수는 for 영억 안에서만 유요하며 그 밖에서 나올 수 없다.
		 * 그러므로 for의 영역 안에서 선언된 변수를 밖에서 사용하기 위해선 for에서 해당 변수를 사용하기에 앞서
		 * for 구문에서 변수를 선언하기 전에 미리 선언하면 for 구문내에서 변수가 재선언 되어도 for 구문 밖에서 사용 할 수 있다
		 */
		int alpha;
		
		for(alpha = 0; alpha<=10; alpha++) {
			System.out.println(alpha);
		}
		System.out.println(alpha);
		/*alpha 변수를 확인하면 해당 변수는 for 영역 안에서 초기화 되었어도 for 구문 밖에서 출력이 가능하다.
		 * 아울러 마지막에 출력된 변수 값을 확인 하면 해당 변수는 증감 연산자를 통해 계속 증감함으로써 조건식에 false가 되었고
		 * 그 결과로 반복이 멈추고 자연스럽게 for 영역 밖으로 흐름이 이어지는 것을 확인 할 수 있다.
		 */

		//ForSumFrom1To100Example 연습
		//목표: for 구문을 사용하여 1-100까지의 총 합을 구하라
		
		int sum = 0;
		
		for(int i = 1; i<=100; i++) {
			sum += i;
			/*sum = 0+1
			 *sum = 0+1+2
			 *sum = 0+1+2+3 ...
			 */
		} System.out.println(sum);
		
		//ForFloatCounterExample 연습
		for(float x = 0.1f; x<=1.0; x+=0.1) {
			System.out.println(x);
		}
		for(double x = 0.1; x<=1.0; x+=0.1) {
			System.out.println(x);
		}// 부동소수점 타입은 count up에 적합하지 않다
		
		
		
		//forMultiplicationTabExample연습
		
		int beta = 1;
		int gamma = 1;
		for(beta=1; beta<=9; beta++) {
			System.out.println("***** "+beta+" 단 ******");
			for(gamma=1; gamma<=9; gamma++) {
				System.out.println(beta + "X" + gamma + "=" + (beta*gamma));
			}
			/* 처음에 베타가 영역 들어가고 그 다음에 for 지문에 감마가 들어가서 순환하기 시작
			 * 그리고 감마가 for 지문안에서 전부 반복 한 다음에 나와서 beta 순환이 됨. 이게 반복
			 */
		}
	}

}
