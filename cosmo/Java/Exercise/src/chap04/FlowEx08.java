package chap04;

import java.util.Scanner;

public class FlowEx08 {
	public static void main(String[] args) {
//		char gender;
//		String regNo = "";
//		System.out.println("당신의 주민번호를 입력하세요.(ex.011231-1111111>");
//		Scanner scanner = new Scanner(System.in);
//		regNo = scanner.nextLine();
//		
//		gender = regNo.charAt(7);//문자열에서 한가지만 뽑아서 읽는 method. 0번부터 샌다. 그러므로 7을 치면 입력된 문자열에 8번째 문자를 입력한다
//		/* 문제 switch(gender){}를 사용
//		 * gender값이 1or3인 경우는 "당신은 남자입니다"
//		 *  2 or4인 경우는 "당신은 여자입니다"
//		 *  이외에는 "유효하지 않은 주민등록번호 입니다.
//		 */
		
		char gender;
		String regNo = "";
		boolean run = true;
		
//		while(run) {
			System.out.println("당신의 주민번호를 입력하세요.(ex.011231-1111111>");
			Scanner scanner = new Scanner(System.in);
			regNo = scanner.nextLine();
			
			gender = regNo.charAt(7);////문자열에서 한가지만 뽑아서 읽는 method. 0번부터 샌다. 그러므로 7을 치면 입력된 문자열에 8번째 문자를 입력한다
			switch(gender) {
				case '1': case '3':
					System.out.println("당신은 남자입니다.");
					break;
				case '2': case '4':
					System.out.println("당신은 여자입니다.");
					break;
				default:
					System.out.println("유효하지않은 주민등록번호입니다.");
					break;
			}
//		}
		
		
				
	}

}
