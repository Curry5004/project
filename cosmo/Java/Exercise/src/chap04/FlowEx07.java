package chap04;

import java.util.Scanner;

public class FlowEx07 {
	public static void main (String[] args) {
//		int user;
//		System.out.print("����(1), ����(2), ��(3) ���ڸ� �Է��ϼ���.>");
//		
//		Scanner scanner = new Scanner(System.in);
//		String tmp = scanner.nextLine();
//		
//		user = Integer.parseInt(tmp);
//		/*����
//		 * switch(user){}�� ����Ͽ� ����, ����, �����´ٴ� ���� ����� ��
//		 */
		
		
//		int user;
//		
//		boolean run = true;
//		
//		while(run) {
//			System.out.print("����(1), ����(2), ��(3) ���ڸ� �Է��ϼ���.>");
//			
//			Scanner scanner = new Scanner(System.in);
//			String tmp = scanner.nextLine();
//			
//			user = Integer.parseInt(tmp);
//			
//			switch(user){
//				case 1:
//					System.out.println("����� ������ ���̽��ϴ�.");
//					break;
//				case 2:
//					System.out.println("����� ������ ���̽��ϴ�.");
//					break;
//				case 3:
//					System.out.println("����� ���� ���̽��ϴ�.");
//					break;
//			}
//		}
		
		int user;
		
		boolean run = true;
		
		while(run) {
			System.out.print("����(1), ����(2), ��(3) ���ڸ� �Է��ϼ���.>");
			
			Scanner scanner = new Scanner(System.in);
			String tmp = scanner.nextLine();
			
			user = Integer.parseInt(tmp);
//			user = Integer(Math.random()*3)+1; // ��������!!!
			
			switch(user){
				case 1:
					System.out.println("����� ������ ���̽��ϴ�.");
					break;
				case 2:
					System.out.println("����� ������ ���̽��ϴ�.");
					break;
				case 3:
					System.out.println("����� ���� ���̽��ϴ�.");
					break;
			}
		}
		
		
		
	}
	

}
