package chap04;

import java.util.Scanner;

public class FlowEx26 {
	public static void main(String[] args) {
		int input = 0;
		
		int answer = 0;
		answer = (int)(Math.random()*10)+1;
		Scanner scanner = new Scanner(System.in);
		
		
		do {
			System.out.println("1���� 10���� ������ ���ڸ� �Է��ϼ���.>");
			String tmp = scanner.nextLine();
			
			input = Integer.parseInt(tmp);
			
			if(input>answer) {
				System.out.println("�� �������� �ٽ� �õ��غ�����");
			} else if (input<answer) {
				System.out.println("�� ū ���� �ٽ� �õ��غ�����");
			}
			
		} while(input != answer);{
			System.out.println("�����Դϴ�");
		}
	}

}
