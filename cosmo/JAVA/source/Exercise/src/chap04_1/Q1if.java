package chap04_1;

import java.util.Scanner;

public class Q1if {
	public static void main(String[] args) {
		int num1 = 10;
		int num2 = 2;
		char operator = '+';
		int result = 0;
		
		
		//if 문으로 구현!!!
//		if(operator=='+') {
//			result=num1+num2;
//		} else if (operator=='-') {
//			result=num1-num2;
//		} else if (operator=='*') {
//			result=num1*num2;
//		} else if (operator=='/') {
//			result=num1/num2;
//		} else {
//			System.out.println("연산자 오류입니다.");
//		}
		
		
		
		//switch로 구현!!!!!
//		switch(operator) {
//			case '+':
//				result=num1+num2;
//				break;
//			case '-':
//				result=num1-num2;
//				break;
//			case '*':
//				result=num1*num2;
//				break;
//			case '/':
//				result=num1/num2;
//				break;
//			default:
//				System.out.println("연산자 오류입니다");
//		}
		
		
		
		//scanner를 사용하여 연산자 입력 및 결론 산출!!
		System.out.print("연산자를 입력해 주세요>>");
		Scanner scanner = new Scanner(System.in);
		String tmp = scanner.nextLine();
//		int input1 = Integer.parseInt(tmp);
//	System.out.println("input=> "+ input1);
		
		//스케너로 받은 모든 개체들은 스트링 타입으로 들어오게 되며 다른 값으로 받고자 한다면 우선 스트링 타입으로 받은 후에 다른 타입으로 바꿔줘야 하는 필요성이 있다
		
		switch(tmp) {
		case "+":    //+ 아스키 43
			result=num1+num2;
			break;
		case "-":    //- 아스키 45
			result=num1-num2;
			break;
		case "*":    //* 아스키 42
			result=num1*num2;
			break;
		case "/":   /// 아스키 47
			result=num1/num2;
			break;
		default:
			System.out.println("연산자 오류입니다");
		}
		
		
		
		
		
		
		System.out.println("결과값은 "+result+"입니다");
		
	}

}
