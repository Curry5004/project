package Exercise;

import java.util.Scanner;

public class Exercise07 {
	public static void main(String[] args) {
		boolean run = true;
		
		int balance = 0;
		
		Scanner scanner = new Scanner(System.in);
		
		while(run) {
			System.out.println("----------------------------");
			System.out.println("1.예금 | 2.출금 | 3.잔고 | 4.종료");
			System.out.println("----------------------------");
			System.out.print("선택>");
			
//			int input = scanner.nextInt();
//			
//			if(input==1) {
//				System.out.print("예금액>");
//				int  i = scanner.nextInt();
//				balance += i;		
//			} 
//			if(input==2) {
//				System.out.print("출금액>");
//				int i = scanner.nextInt();
//				balance -= i;				
//			}
//			if(input==3) {
//				System.out.println("잔고>"+balance);
//				
//			}
//			if(input==4) {
//				run=false;
//			}
//		내 코드. 스위치로 하면 더 간결...한가? 그래보이내. 스위치도 잘 써주자
	
			
			int input = scanner.nextInt();
			int money;
			switch(input) {
				case 1:
					System.out.print("예금>");
					money=scanner.nextInt();
					balance += money;
					break;
				case 2:
					System.out.print("출금>");
					money=scanner.nextInt();
					balance -=money;
					break;
				case 3:
					System.out.println("잔고>"+balance);
					break;
				case 4:
					run = false;
					
			}
					
		
			
		
		}
		System.out.println("프로그램을 정지합니다");
		

	}
}