package chap04_1;

import java.util.Scanner;

public class Q1if {
	public static void main(String[] args) {
		int num1 = 10;
		int num2 = 2;
		char operator = '+';
		int result = 0;
		
		
		//if ������ ����!!!
//		if(operator=='+') {
//			result=num1+num2;
//		} else if (operator=='-') {
//			result=num1-num2;
//		} else if (operator=='*') {
//			result=num1*num2;
//		} else if (operator=='/') {
//			result=num1/num2;
//		} else {
//			System.out.println("������ �����Դϴ�.");
//		}
		
		
		
		//switch�� ����!!!!!
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
//				System.out.println("������ �����Դϴ�");
//		}
		
		
		
		//scanner�� ����Ͽ� ������ �Է� �� ��� ����!!
		System.out.print("�����ڸ� �Է��� �ּ���>>");
		Scanner scanner = new Scanner(System.in);
		String tmp = scanner.nextLine();
//		int input1 = Integer.parseInt(tmp);
//	System.out.println("input=> "+ input1);
		
		//���ɳʷ� ���� ��� ��ü���� ��Ʈ�� Ÿ������ ������ �Ǹ� �ٸ� ������ �ް��� �Ѵٸ� �켱 ��Ʈ�� Ÿ������ ���� �Ŀ� �ٸ� Ÿ������ �ٲ���� �ϴ� �ʿ伺�� �ִ�
		
		switch(tmp) {
		case "+":    //+ �ƽ�Ű 43
			result=num1+num2;
			break;
		case "-":    //- �ƽ�Ű 45
			result=num1-num2;
			break;
		case "*":    //* �ƽ�Ű 42
			result=num1*num2;
			break;
		case "/":   /// �ƽ�Ű 47
			result=num1/num2;
			break;
		default:
			System.out.println("������ �����Դϴ�");
		}
		
		
		
		
		
		
		System.out.println("������� "+result+"�Դϴ�");
		
	}

}
