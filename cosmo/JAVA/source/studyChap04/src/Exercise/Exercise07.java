package Exercise;

import java.util.Scanner;

public class Exercise07 {
	public static void main(String[] args) {
		boolean run = true;
		
		int balance = 0;
		
		Scanner scanner = new Scanner(System.in);
		
		while(run) {
			System.out.println("----------------------------");
			System.out.println("1.���� | 2.��� | 3.�ܰ� | 4.����");
			System.out.println("----------------------------");
			System.out.print("����>");
			
//			int input = scanner.nextInt();
//			
//			if(input==1) {
//				System.out.print("���ݾ�>");
//				int  i = scanner.nextInt();
//				balance += i;		
//			} 
//			if(input==2) {
//				System.out.print("��ݾ�>");
//				int i = scanner.nextInt();
//				balance -= i;				
//			}
//			if(input==3) {
//				System.out.println("�ܰ�>"+balance);
//				
//			}
//			if(input==4) {
//				run=false;
//			}
//		�� �ڵ�. ����ġ�� �ϸ� �� ����...�Ѱ�? �׷����̳�. ����ġ�� �� ������
	
			
			int input = scanner.nextInt();
			int money;
			switch(input) {
				case 1:
					System.out.print("����>");
					money=scanner.nextInt();
					balance += money;
					break;
				case 2:
					System.out.print("���>");
					money=scanner.nextInt();
					balance -=money;
					break;
				case 3:
					System.out.println("�ܰ�>"+balance);
					break;
				case 4:
					run = false;
					
			}
					
		
			
		
		}
		System.out.println("���α׷��� �����մϴ�");
		

	}
}