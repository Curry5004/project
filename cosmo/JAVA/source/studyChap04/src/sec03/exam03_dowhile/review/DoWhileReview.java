package sec03.exam03_dowhile.review;

import java.util.Scanner; //Scanner Ŭ������ ����ϱ� ���� �ʿ���

public class DoWhileReview {
	public static void main(String[] args) {
		System.out.println("�޽����� �Է��ϼ���");
		System.out.println("���α׷��� �����Ϸ��� q�� �Է��ϼ���");
		
		Scanner scanner = new Scanner(System.in);
		String inputString;
		
		do {
			System.out.print(">");
			inputString = scanner.nextLine();// Ű����� ������ ���ڿ��� ����
			System.out.println(inputString);
		} while(!inputString.equals("q"));
		//equals �� ���ڿ��� ���� �� ����ϴ� �޼ҵ�
		//�ٸ��� ġ�� false�ϱ� �տ� ���������� ���� true�� �Ǿ� �ٽ� do�� ���ϵȴ�
		
		System.out.println();
		System.err.println("���α׷� ����");
	}

}
