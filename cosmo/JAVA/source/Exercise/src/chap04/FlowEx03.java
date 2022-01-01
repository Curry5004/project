package chap04;

import java.util.Scanner;

public class FlowEx03 {
	public static void main(String[] args) {
		int input;
		System.out.print("숫자를 하나 입력하세요.>");
		
		Scanner scanner = new Scanner(System.in);
		String tmp = scanner.nextLine();
		//입력받은 문자열을(tmp)을 숫자로 변환
		input = Integer.parseInt(tmp);
		
		if(input==0) {
			System.out.println("입력하신 숫자는 0입니다.");
		} else {
			System.out.println("입력하신 숫자는 0이 아닙니다.");
			System.out.println("다시 입력해주시길 바랍니다");
			
		}
		
		//111page에 자료 있으니 참고!
		
	}

}
