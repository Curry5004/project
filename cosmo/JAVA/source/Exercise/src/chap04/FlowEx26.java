package chap04;

import java.util.Scanner;

public class FlowEx26 {
	public static void main(String[] args) {
		int input = 0;
		
		int answer = 0;
		answer = (int)(Math.random()*10)+1;
		Scanner scanner = new Scanner(System.in);
		
		
		do {
			System.out.println("1부터 10까지 사이의 숫자를 입력하세요.>");
			String tmp = scanner.nextLine();
			
			input = Integer.parseInt(tmp);
			
			if(input>answer) {
				System.out.println("더 작은수로 다시 시도해보세요");
			} else if (input<answer) {
				System.out.println("더 큰 수로 다시 시도해보세요");
			}
			
		} while(input != answer);{
			System.out.println("정답입니다");
		}
	}

}
