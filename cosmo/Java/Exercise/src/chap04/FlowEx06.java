package chap04;

import java.util.Scanner;

public class FlowEx06 {
	public static void main(String[] args) {
//		int month = 0;
//		
//		System.out.println("���� ���� �Է��ϼ���.>");
//		
//		Scanner scanner = new Scanner(System.in);
//		String tmp = scanner.nextLine();
//		
//		month = Integer.parseInt(tmp);
//		
//		//���� switch(mount){case} �� ����Ͽ�
//		//������ ������ ��Ÿ�� �� (�� 3,4,5, ���� 6,7,8 ���� 9,10,11 �ܿ�12,1,2)
//		//
		
		
		
		int month = 0;
		boolean run = true;
		
		while(run) {
			System.out.print("���� ���� �Է��ϼ���.>");
			
			Scanner scanner = new Scanner(System.in);
			String tmp = scanner.nextLine();
			
			month = Integer.parseInt(tmp);
			
			switch(month) {
				case 3: case 4: case 5: // ������ ������ �̷��� �����ϱ� ���� �ص� �Ǳ� ������ �������� �̰� �� ����
					System.out.println("���� ������ ���Դϴ�");
					break;
				case 6: case 7: case 8:
					System.out.println("���� ������ �����Դϴ�");
					break;
				case 9: case 10: case 11:
					System.out.println("���� ������ �����Դϴ�");
					break;
				case 12: case 1: case 2:
				//default:�� ���� else�� ����!
					System.out.println("���� ������ �ܿ��Դϴ�");
					break;
					
			}
			
			if(month == 3 || month == 4 ||month == 5) {
				System.out.println("if ���� ������ ���Դϴ�.");
			} else if (month == 6 || month == 7 ||month == 8) {
				System.out.println("if ���� ������ �����Դϴ�.");
			} else if (month == 9 || month == 10 ||month == 11) {
				System.out.println("if ���� ������ �����Դϴ�.");
			} else if (month == 12 || month == 1 ||month == 2) {
				System.out.println("if ���� ������ �ܿ��Դϴ�.");
			}
			//if���� �� ���� ���� �ϴµ� switch���� ��� �� �� �ִ�
				
		}
		
		
	}

}
