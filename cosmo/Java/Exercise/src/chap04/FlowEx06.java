package chap04;

import java.util.Scanner;

public class FlowEx06 {
	public static void main(String[] args) {
//		int month = 0;
//		
//		System.out.println("현재 월을 입력하세요.>");
//		
//		Scanner scanner = new Scanner(System.in);
//		String tmp = scanner.nextLine();
//		
//		month = Integer.parseInt(tmp);
//		
//		//문제 switch(mount){case} 을 사용하여
//		//현재의 계절을 나타낼 것 (봄 3,4,5, 여름 6,7,8 가을 9,10,11 겨울12,1,2)
//		//
		
		
		
		int month = 0;
		boolean run = true;
		
		while(run) {
			System.out.print("현재 월을 입력하세요.>");
			
			Scanner scanner = new Scanner(System.in);
			String tmp = scanner.nextLine();
			
			month = Integer.parseInt(tmp);
			
			switch(month) {
				case 3: case 4: case 5: // 여러개 넣을땐 이렇게 나열하기 엔터 해도 되긴 하지만 가독성이 이게 더 좋다
					System.out.println("현재 계절은 봄입니다");
					break;
				case 6: case 7: case 8:
					System.out.println("현재 계절은 여름입니다");
					break;
				case 9: case 10: case 11:
					System.out.println("현재 계절은 가을입니다");
					break;
				case 12: case 1: case 2:
				//default:도 가능 else와 동일!
					System.out.println("현재 계절은 겨울입니다");
					break;
					
			}
			
			if(month == 3 || month == 4 ||month == 5) {
				System.out.println("if 현재 계절은 봄입니다.");
			} else if (month == 6 || month == 7 ||month == 8) {
				System.out.println("if 현재 계절은 여름입니다.");
			} else if (month == 9 || month == 10 ||month == 11) {
				System.out.println("if 현재 계절은 가을입니다.");
			} else if (month == 12 || month == 1 ||month == 2) {
				System.out.println("if 현재 계절은 겨울입니다.");
			}
			//if문을 더 많이 쓰긴 하는데 switch문을 사용 할 수 있다
				
		}
		
		
	}

}
