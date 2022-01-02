package sec00.exam01;

public class Q4 {
	public static void main(String[] args) {
		int num1 = 10;
		double num2 = 2.0;
		
		System.out.println((int)(num1 + num2));
		System.out.println((int)(num1 / num2));
		System.out.println((int)(num1 * num2));
		System.out.println((int)(num1 - num2));
		System.out.println((int)(num2 - num1)); // 음수도 적상적으로 작동함
		System.out.println((int)(num2 / num1)); // 형변환 되어 0.2 -> 0이 됨
		System.out.println(num1-num1); /* 타이핑이 double 타입으로 됨. 특별히 명시 하지 않았음에도 불구하고 
		메모리의 크기가 큰 double 타입으로 넘어감. 이것이 묵시적 형변환*/
		
		/* 테스트*/
		
		int num3 = 20/2;
		System.out.println((int)(num3 / num2)); // int값에선 식도 적용될 수 있다.
		
		int num4 = 20/3; //선언할때부터 정수가 아니면? 
		System.out.println(num4); // 계산식이 적용된 것 처럼 계산된 결과물이 도출되며 정수만 표기하는 int의 특성상 소수부분은 제거된다.

				
	}

}
