package chap04;

import java.util.Scanner;

public class FlowEx03 {
	public static void main(String[] args) {
		int input;
		System.out.print("���ڸ� �ϳ� �Է��ϼ���.>");
		
		Scanner scanner = new Scanner(System.in);
		String tmp = scanner.nextLine();
		//�Է¹��� ���ڿ���(tmp)�� ���ڷ� ��ȯ
		input = Integer.parseInt(tmp);
		
		if(input==0) {
			System.out.println("�Է��Ͻ� ���ڴ� 0�Դϴ�.");
		} else {
			System.out.println("�Է��Ͻ� ���ڴ� 0�� �ƴմϴ�.");
			System.out.println("�ٽ� �Է����ֽñ� �ٶ��ϴ�");
			
		}
		
		//111page�� �ڷ� ������ ����!
		
	}

}
