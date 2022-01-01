package sec02.exam02_switch;

public class SwitchCharExample {
	public static void main(String[] args) {
		char grade = 'B';
		
		switch(grade) {
			case 'A':
			case 'a':
				System.out.println("우수 회원입니다");
				//이렇게 하면 대소문자 상관없이 a만 입력하면 동일한 폰트를 출력 -> 적은 소스로도 효율적으로 할 수 이싿
			/*case 'A':
			 * System.out.println("우수 회원입니다");
			 * break;
			 *case 'a':
			 * System.out.println("우수 회원입니다");
			 * break;
			 *만약 브레이크가 없다면 이렇게 길게 죽죽 써줘야함
			 *더 간단하게 하려면 case 'A' : case 'a': 이렇게 잡아줘도 됨
			 */
				break;
			case 'B':
			case 'b':
				System.out.println("일반 회원입니다");
				break;
			default:
				System.out.println("손님입니다");
		}
	}

}
