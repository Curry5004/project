package sec03.review;

/* 2진수 8진수 10진수 16진수 리터럴 표현법, 2진수 음수 계산 및 표현법 연습*/

public class ReviewNum {
	public static void main(String[] args) {
		int num1 = 10;
		int num2 = 0B1010; //이진수. 표현법 0B 0*2^0 + 1*2^1 + 0*2^2 + 1*2^3
		int num3 = 012; //8진수. 표현법 0 2*8^0 + 1*8^1
		int num4 = 0xA; //16진수. 표현법 0x 얘는 그냥 외워. 10=A 11=B 12=C 13=D 14=E 15=F 16=10
		
		System.out.println(num1);
		System.out.println(num2);
		System.out.println(num3);
		System.out.println(num4);
		
		/*정수 표현법
		2의 보수를 취하는 것이 포인트.
		1의 보수를 취한 뒤 1을 더한다*/
		int num5 = 0B00001010;
		int num6 = 0B11110110;
		
		System.out.println(num5+num6);
		//이러면 값 이상하게 나옴. 왜? int의 매모리값인 32비트로 작성해보자
		
		int num7 = 0B00000000000000000000000000000001;
		int num8 = 0B11111111111111111111111111111111;
		//이러면 된다. 근데 8번을 계산기에 넣고 돌리면 막 숫자 엄청 뜨는데 int 상에선 32비트 넘어가면 가장 낮은 자리로 돌아오는 것을 염두하자
		
		System.out.println(num7+num8);
	}

}
