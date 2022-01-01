package sec03.exam03_dowhile.review;

import java.util.Scanner; //Scanner 클래스를 사용하기 위해 필요함

public class DoWhileReview {
	public static void main(String[] args) {
		System.out.println("메시지를 입력하세요");
		System.out.println("프로그램을 종료하려면 q를 입력하세요");
		
		Scanner scanner = new Scanner(System.in);
		String inputString;
		
		do {
			System.out.print(">");
			inputString = scanner.nextLine();// 키보드로 립력한 문자열을 받음
			System.out.println(inputString);
		} while(!inputString.equals("q"));
		//equals 두 문자열을 비교할 때 사용하는 메소드
		//다른거 치면 false니까 앞에 논리부정문을 통해 true가 되어 다시 do로 리턴된단
		
		System.out.println();
		System.err.println("프로그램 종료");
	}

}
